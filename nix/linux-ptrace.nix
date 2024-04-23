{
  "0.1" = {
    sha256 = "378057f38c962590b9a2816341b595313ac7e26945938cd4a7a61c3e2cf88bc4";
    revisions = {
      r0 = {
        nix = import ../hackage/linux-ptrace-0.1-r0-27d91822f9c20f76ac66193e21935963c3be36fe44133f2221b53702180664e7.nix;
        revNum = 0;
        sha256 = "27d91822f9c20f76ac66193e21935963c3be36fe44133f2221b53702180664e7";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "b686d2752d6c50da2803075de40ae9b7e3b81c775008bb27073611c9aadd8d2d";
    revisions = {
      r0 = {
        nix = import ../hackage/linux-ptrace-0.1.1-r0-8b529dd7106b8bfa28a1b4af3c4b381c1478f09a0ccff126d14c45ac4195fe6b.nix;
        revNum = 0;
        sha256 = "8b529dd7106b8bfa28a1b4af3c4b381c1478f09a0ccff126d14c45ac4195fe6b";
      };
      default = "r0";
    };
  };
  "0.1.2" = {
    sha256 = "75108b21c04301c3f2e9f8912fcd2e101cd0ed6bbda79c27d68b79ba938ff643";
    revisions = {
      r0 = {
        nix = import ../hackage/linux-ptrace-0.1.2-r0-3068c0ef7213d7434ad17cd630ab22c94fa55c29e91e86e41d395be36d70a8f3.nix;
        revNum = 0;
        sha256 = "3068c0ef7213d7434ad17cd630ab22c94fa55c29e91e86e41d395be36d70a8f3";
      };
      r1 = {
        nix = import ../hackage/linux-ptrace-0.1.2-r1-104fac22d2c56d66864f68408a17a93bdaa44d268fcddb6b9e5fca155a79242a.nix;
        revNum = 1;
        sha256 = "104fac22d2c56d66864f68408a17a93bdaa44d268fcddb6b9e5fca155a79242a";
      };
      default = "r1";
    };
  };
}