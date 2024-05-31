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
}