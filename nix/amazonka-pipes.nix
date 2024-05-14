{
  "2.0" = {
    sha256 = "c0f1c680f20f8af294b78abe94d5044d44f95a5ea8a2a9486cfe6939007802c3";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-pipes-2.0-r0-fc2c017694f55ba6a6bf637bd57c0ac167be04aeb8df5460446b171316905805.nix;
        revNum = 0;
        sha256 = "fc2c017694f55ba6a6bf637bd57c0ac167be04aeb8df5460446b171316905805";
      };
      r1 = {
        nix = import ../hackage/amazonka-pipes-2.0-r1-a83375a3aafc12cb7abe92550cbe0fed122c287126f992db396d4d7bfac17846.nix;
        revNum = 1;
        sha256 = "a83375a3aafc12cb7abe92550cbe0fed122c287126f992db396d4d7bfac17846";
      };
      default = "r1";
    };
  };
}