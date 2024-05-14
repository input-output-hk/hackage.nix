{
  "1.6.0" = {
    sha256 = "e9723dcc619f14cab0fb4606a59975b1ed98bc9a1f41834db54443e8f8f295d4";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mq-1.6.0-r0-469cb8a5a2554ac1e4546d7331a4cd553c3ad4629580dbed4f6376e55edb39c8.nix;
        revNum = 0;
        sha256 = "469cb8a5a2554ac1e4546d7331a4cd553c3ad4629580dbed4f6376e55edb39c8";
      };
      r1 = {
        nix = import ../hackage/amazonka-mq-1.6.0-r1-81395e2ebd36801221a23236f834b1bd37a6c4500cdcd2ba9d679b1127549d55.nix;
        revNum = 1;
        sha256 = "81395e2ebd36801221a23236f834b1bd37a6c4500cdcd2ba9d679b1127549d55";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "40c1a1e5375d666df4ae1cfff04008437d1fc82aa6f10024470af52db9b60f72";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mq-1.6.1-r0-6deeb67d6d80896db19c0bf05ef95b5f017fb753d793fe6521e0430e97671b01.nix;
        revNum = 0;
        sha256 = "6deeb67d6d80896db19c0bf05ef95b5f017fb753d793fe6521e0430e97671b01";
      };
      r1 = {
        nix = import ../hackage/amazonka-mq-1.6.1-r1-bea99841663ab2e9e2d0029823f489a7fbeeef6d1cbe1cf1705a998629234d1f.nix;
        revNum = 1;
        sha256 = "bea99841663ab2e9e2d0029823f489a7fbeeef6d1cbe1cf1705a998629234d1f";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "513f007cdc6a960e8830d7349e651e59d438e04abb3d3bdfd82c2e9c43479c42";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mq-2.0-r0-71f0a3cf35eb07da0fbe7ddaa0d0d1364a3e0cb4127e2c92afb0aaa649f868bf.nix;
        revNum = 0;
        sha256 = "71f0a3cf35eb07da0fbe7ddaa0d0d1364a3e0cb4127e2c92afb0aaa649f868bf";
      };
      r1 = {
        nix = import ../hackage/amazonka-mq-2.0-r1-79595a93f65a1d27dd9848e821f132841e1f7f67c1014501c1e1c4a7382d2083.nix;
        revNum = 1;
        sha256 = "79595a93f65a1d27dd9848e821f132841e1f7f67c1014501c1e1c4a7382d2083";
      };
      default = "r1";
    };
  };
}