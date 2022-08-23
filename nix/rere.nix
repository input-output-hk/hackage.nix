{
  "0.1" = {
    sha256 = "4c79e0e8d7101e0e0177716d0b912aa7a2bbdeb91533b599e6b4e24e55b35343";
    revisions = {
      r0 = {
        nix = import ../hackage/rere-0.1-r0-5547708af91d78a437490ab29e4594ee5cf145a87987e57689811dad9c2294c6.nix;
        revNum = 0;
        sha256 = "5547708af91d78a437490ab29e4594ee5cf145a87987e57689811dad9c2294c6";
        };
      r1 = {
        nix = import ../hackage/rere-0.1-r1-8f4b56dc6ea9d1a5aabbd4662449474fcc140398987de0d7188ed14612634e4c.nix;
        revNum = 1;
        sha256 = "8f4b56dc6ea9d1a5aabbd4662449474fcc140398987de0d7188ed14612634e4c";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "99fa400d5f3392fae6037c65e9cbf09cee837f753181f4fbf5f7f2ca20750969";
    revisions = {
      r0 = {
        nix = import ../hackage/rere-0.2-r0-ec1d87554c03755d89f3401c5e5c27827e61dde835c54cbdaf509136ce8f6f2b.nix;
        revNum = 0;
        sha256 = "ec1d87554c03755d89f3401c5e5c27827e61dde835c54cbdaf509136ce8f6f2b";
        };
      r1 = {
        nix = import ../hackage/rere-0.2-r1-32ecce69e17ad1bb6479a059c477fc997794ac717c937c5650c44e47195cead6.nix;
        revNum = 1;
        sha256 = "32ecce69e17ad1bb6479a059c477fc997794ac717c937c5650c44e47195cead6";
        };
      r2 = {
        nix = import ../hackage/rere-0.2-r2-b7c53e73da29e06338bd8122a46c7306ef8c2a2e6d22f1829d48cb2c34016ebd.nix;
        revNum = 2;
        sha256 = "b7c53e73da29e06338bd8122a46c7306ef8c2a2e6d22f1829d48cb2c34016ebd";
        };
      default = "r2";
      };
    };
  }