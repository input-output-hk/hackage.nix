{
  "9.1001.0" = {
    sha256 = "14fa8a6cde16be9563f9d48706294a0d91f47c1b4f449a474e49476f1fd9687c";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-internal-9.1001.0-r0-02bd44b7639a7bad6ae2721c409b6918b8b4acc416103a8be45b5da06f1c5f49.nix;
        revNum = 0;
        sha256 = "02bd44b7639a7bad6ae2721c409b6918b8b4acc416103a8be45b5da06f1c5f49";
      };
      r1 = {
        nix = import ../hackage/ghc-internal-9.1001.0-r1-dfa39788bc81ede2db08080a93ac8819e57a8d6df955243dcb4af550982fa5e7.nix;
        revNum = 1;
        sha256 = "dfa39788bc81ede2db08080a93ac8819e57a8d6df955243dcb4af550982fa5e7";
      };
      default = "r1";
    };
  };
  "9.1002.0" = {
    sha256 = "069996e00c672ee1020cd95ef517d172c58e9b2a5b392f1a668610f1d343584b";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-internal-9.1002.0-r0-d2e400fc64556ed36c98fe8ef45d13c2433310ab71940232bd27e453baf753d7.nix;
        revNum = 0;
        sha256 = "d2e400fc64556ed36c98fe8ef45d13c2433310ab71940232bd27e453baf753d7";
      };
      default = "r0";
    };
  };
  "9.1003.0" = {
    sha256 = "30f27e5331d1bcc0dc666234538937719020f03aa190346b144dfaad81e6c48c";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-internal-9.1003.0-r0-295452893e0cb58c175a49bd83c22afec0dc25637bd2eaef938eaf944ad3fb8e.nix;
        revNum = 0;
        sha256 = "295452893e0cb58c175a49bd83c22afec0dc25637bd2eaef938eaf944ad3fb8e";
      };
      default = "r0";
    };
  };
  "9.1201.0" = {
    sha256 = "3e51ed5ee7062221a61dba8b535c21ee71a9457c91db3b29e6c817ee4455d210";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-internal-9.1201.0-r0-e4d566b20423563c3f364a82189dafc9592fb4e479ae59866cb5d2f86aea91c9.nix;
        revNum = 0;
        sha256 = "e4d566b20423563c3f364a82189dafc9592fb4e479ae59866cb5d2f86aea91c9";
      };
      default = "r0";
    };
  };
  "9.1401.0" = {
    sha256 = "82e4950d1ca056edc16776cc4c0f32cfa4b9b65ecd90f3c733ace1756f0fa632";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-internal-9.1401.0-r0-253a5ea2f85b48d4d81351719729e99ba31929f45b1fa300f4e3cc17611808bf.nix;
        revNum = 0;
        sha256 = "253a5ea2f85b48d4d81351719729e99ba31929f45b1fa300f4e3cc17611808bf";
      };
      default = "r0";
    };
  };
}