{
  "3.8.1.0" = {
    sha256 = "df2369f6c37517a3b2625bc19057d9e206bbb40386bcb607f17dc7d2e588ffe7";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-install-solver-3.8.1.0-r0-9ce6e9ab0236192251343ddbe584b4db2a2dfef2930a3e5511af3746fe6483dc.nix;
        revNum = 0;
        sha256 = "9ce6e9ab0236192251343ddbe584b4db2a2dfef2930a3e5511af3746fe6483dc";
        };
      r1 = {
        nix = import ../hackage/cabal-install-solver-3.8.1.0-r1-95f75217c3f6f7231576d73dd9275303f271360a0a2a0f02bb03c80b843c88bc.nix;
        revNum = 1;
        sha256 = "95f75217c3f6f7231576d73dd9275303f271360a0a2a0f02bb03c80b843c88bc";
        };
      default = "r1";
      };
    };
  }