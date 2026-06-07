{
  "0.1.0.0" = {
    sha256 = "e351d0417c1b229dbc2959569c13f0eba4310bb59e57f5c501595acd9123dc51";
    revisions = {
      r0 = {
        nix = import ../hackage/tricorder-0.1.0.0-r0-dd37e06286acb597239a09ac7adbc1ceb42437c7328abac1b4eeb10d773dd6ef.nix;
        revNum = 0;
        sha256 = "dd37e06286acb597239a09ac7adbc1ceb42437c7328abac1b4eeb10d773dd6ef";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "c416c56b1b3173daecff115aacb3841c1d82bd6a7cf053e00fa2cfd45a1474b2";
    revisions = {
      r0 = {
        nix = import ../hackage/tricorder-0.1.0.1-r0-8902f1d6985294c3a6120ef59c573d84518b7d23fd9b8625889496c1ee6fc124.nix;
        revNum = 0;
        sha256 = "8902f1d6985294c3a6120ef59c573d84518b7d23fd9b8625889496c1ee6fc124";
      };
      default = "r0";
    };
  };
}