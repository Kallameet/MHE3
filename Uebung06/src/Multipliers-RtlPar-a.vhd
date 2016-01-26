architecture RtlPar of Multipliers is
  type aState is (sIdle, sMultX, sWait);

  type aReg is record
    State  : aState;
    Xa, Xb : std_ulogic_vector(gBitWidth-1 downto 0);
    Ya, Yb : std_ulogic_vector(gBitWidth-1 downto 0);
    X, Y   : std_ulogic_vector(2*gBitWidth-1 downto 0);
    Ready  : std_ulogic;
  end record;

  constant cRegResetVal : aReg := (
    sIdle,
    (others => '0'), (others => '0'),
    (others => '0'), (others => '0'),
    (others => '0'), (others => '0'),
    '0'
    );

  signal R, nR : aReg;

  signal XMultResult, YMultResult : std_ulogic_vector(2*gBitWidth-1 downto 0);

begin  -- RtlPar

  reg : process (iClk, inRst)
  begin  -- process reg
    if inRst = '0' then                   -- asynchronous reset (active low)
      R <= cRegResetVal;
    elsif iClk'event and iClk = '1' then  -- rising clock edge
      R <= nR;
    end if;
  end process reg;

  comb : process (R, iEn, iXa, iXb, iYa, iYb, XMultResult, YMultResult)
  begin  -- process comb
    nR         <= R;
    nR.Ready   <= '0';

    case R.State is
      when sIdle =>
        if iEn = '1' then
          nR.Xa    <= iXa;
          nR.Xb    <= iXb;
          nR.Ya    <= iYa;
          nR.Yb    <= iYb;
          nR.State <= sMultX;
        end if;
      when sMultX =>
        nR.X 	<= XMultResult;
		nR.Y    <= YMultResult;
        
        nR.State <= sWait;
      when sWait =>
        
        nR.State <= sIdle;
        nR.Ready <= '1';
      when others => null;
    end case;
  end process comb;

  mult : process (R)
    variable resX : signed(2*gBitWidth-1 downto 0);
	variable resY : signed(2*gBitWidth-1 downto 0);
  begin  -- process mult
    resX        := signed(R.Xa) * signed(R.Xb);
	resY        := signed(R.Ya) * signed(R.Yb);
    XMultResult <= std_ulogic_vector(resX(resX'high downto resX'low));
	YMultResult <= std_ulogic_vector(resY(resY'high downto resY'low));
  end process mult;

  oX     <= R.X;
  oY     <= R.Y;
  oReady <= R.Ready;
  
end RtlPar;
