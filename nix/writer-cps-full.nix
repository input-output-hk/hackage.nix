{
  "0.1.0.0" = {
    sha256 = "ba51df5149470be6d70fd179f2af4cae30824a3a63528f1549a97f57610a5e95";
    revisions = {
      r0 = {
        nix = import ../hackage/writer-cps-full-0.1.0.0-r0-8f2b44a4ea6d59d5f693b0ec73336a0b815e058d9b8a42916a90d6e82a53275b.nix;
        revNum = 0;
        sha256 = "8f2b44a4ea6d59d5f693b0ec73336a0b815e058d9b8a42916a90d6e82a53275b";
        };
      r1 = {
        nix = import ../hackage/writer-cps-full-0.1.0.0-r1-c1184180631618add72cebf1020fc265afeec56d27978df5f8654e333bfcf107.nix;
        revNum = 1;
        sha256 = "c1184180631618add72cebf1020fc265afeec56d27978df5f8654e333bfcf107";
        };
      default = "r1";
      };
    };
  }