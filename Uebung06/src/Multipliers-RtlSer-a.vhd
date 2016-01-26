architecture RtlSer of Multipliers is
  type aState is (sIdle, sAddX, sAddY);

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

  signal MultResult : std_ulogic_vector(2*gBitWidth-1 downto 0);

begin  -- RtlSer

  reg : process (iClk, inRst)
  begin  -- process reg
    if inRst = '0' then                   -- asynchronous reset (active low)
      R <= cRegResetVal;
    elsif iClk'event and iClk = '1' then  -- rising clock edge
      R <= nR;
    end if;
  end process reg;

  comb : process (R, iEn, iXa, iXb, iYa, iYb, MultResult)
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
          nR.State <= sAddX;
        end if;
      when sAddX =>
        nR.X <= MultResult;

        -- get Y's values into X to avoid the multiplexer in front of the multiplier
        nR.Xa <= R.Ya;
        nR.Xb <= R.Yb;

        nR.State <= sAddY;
      when sAddY =>
        nR.Y     <= MultResult;
        nR.State <= sIdle;
        nR.Ready <= '1';
      when others => null;
    end case;
  end process comb;

  mult : process (R)
    variable res : signed(2*gBitWidth-1 downto 0);
  begin  -- process mult
    res        := signed(R.Xa) * signed(R.Xb);
    MultResult <= std_ulogic_vector(res(res'high downto res'low));
  end process mult;

  oX     <= R.X;
  oY     <= R.Y;
  oReady <= R.Ready;
  
end RtlSer;

