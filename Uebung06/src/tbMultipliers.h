#ifndef TBMULTIPLIERS_H
#define TBMULTIPLIERS_H

#include <systemc.h>
#include <math.h>

#include "systemc.h"

#define BITWIDTH 32

using namespace sc_dt;

class Multipliers : public sc_foreign_module {
public:
	sc_in<bool> inRst, iClk, iEn;
	sc_in<sc_int<BITWIDTH> > iXa, iXb;
	sc_in<sc_int<BITWIDTH> > iYa, iYb;
	sc_out<sc_int<2*BITWIDTH> > oX, oY;
	sc_out<bool> oReady;

	Multipliers(sc_module_name nm, const char* hdl_name)
		: sc_foreign_module(nm, hdl_name)
	{}

	~Multipliers()
	{}
};

SC_MODULE(tbMultipliers) {
	sc_signal<bool> inRst, iEn;
	sc_signal<sc_int<BITWIDTH> > iXa, iXb, iYa, iYb;
	sc_signal<sc_int<2*BITWIDTH> > oX, oY;
	sc_signal<bool> oReady;

	sc_clock clk;

	enum eChannel {X, Y};
	eChannel channel;

	int errors;

	Multipliers *theMultipliers;

	SC_CTOR(tbMultipliers) : clk("clk", 40, SC_NS), channel(X), errors(0) {
		theMultipliers = new Multipliers("theMultipliers", "work.Multipliers");

		theMultipliers->inRst(inRst);
		theMultipliers->iClk(clk);
		theMultipliers->iEn(iEn);
		theMultipliers->iXa(iXa);
		theMultipliers->iXb(iXb);
		theMultipliers->iYa(iYa);
		theMultipliers->iYb(iYb);
		theMultipliers->oX(oX);
		theMultipliers->oY(oY);
		theMultipliers->oReady(oReady);

		SC_THREAD(stimuli);
	}

	~tbMultipliers() {
		delete theMultipliers;
	}

#if defined(IF_SINE)
	/* inter- and intra-channel correlation */
	void inline inputFunction(double time, double &x, double &y) {
 		x = y = sin(time/(100*2*M_PI));
	}
#elif defined(IF_RAND1)
	/* no correlation */
	void inline inputFunction(double time, double &x, double &y) {
		x = (double) rand() / RAND_MAX;
		y = (double) rand() / RAND_MAX;
	}
#elif defined(IF_RAND2)
	/* inter-channel correlation correlation */
	void inline inputFunction(double time, double &x, double &y) {
		x = y = (double) rand() / RAND_MAX;
	}
#elif defined(IF_CONST)
	/* intra-channel correlation */
	void inline inputFunction(double time, double &x, double &y) {
		x = 1.0;
		y = -1.0;
	}
#else
	#error "You need to define an input function (IF_*)!"
#endif

	void inline scaledInputFunction(double time, int &x, int &y) {
		double dx, dy;
		inputFunction(time, dx, dy);
		x = (int) (dx * ((1<<(BITWIDTH -1)) - 1));
		y = (int) (dy * ((1<<(BITWIDTH -1)) - 1));
	}

	void applyAndCheck(int Xa, int Xb, int Ya, int Yb) {
		iXa = Xa;
		iXb = Xb;
		iYa = Ya;
		iYb = Yb;
		iEn = 1;
		wait(clk.posedge_event());
		wait(3, SC_NS);
		iEn = 0;
		do wait(clk.posedge_event()); while (oReady != 1);
		wait(3, SC_NS);

		sc_int<2*BITWIDTH> x_res, y_res;
		x_res = sc_int<BITWIDTH>(Xa) * sc_int<BITWIDTH>(Xb);
		y_res = sc_int<BITWIDTH>(Ya) * sc_int<BITWIDTH>(Yb);

		if (oX.read() != x_res) { errors++; cout << "Unexpected result (X)!" << endl; }
		if (oY.read() != y_res) { errors++; cout << "Unexpected result (Y)!" << endl; }

		/* save values to registers to simplify debugging */
	}

	void stimuli() {
		inRst = 0;
		iXa = 0;
		iXb = 0;
		iYa = 0;
		iYa = 0;
		iEn = 0;
		wait(100, SC_NS);
		wait(clk.posedge_event());
		wait(3, SC_NS);
		inRst = 1;
		wait(clk.posedge_event());

		for (int time = 0; time < 3600; time += 1) {
			int x, y;
			scaledInputFunction(time, x, y);
			/* x*x and y*y */
			applyAndCheck(x, x, y, y);
		}

		if (errors)
			cout << sc_time_stamp() << ": Simulation done WITH " << errors << " ERRORS." << endl;
		else
			cout << sc_time_stamp() << ": Simulation done without errors." << endl;
		
		sc_stop();
	}
};

#endif /* TBMULTIPLIERS_H */

