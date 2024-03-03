{
  "0.2.0.0" = {
    sha256 = "18847d907ae703f29cdefa43c10b9b0ba11382d9eaede73c0c7e7b5ae8b4b38d";
    revisions = {
      r0 = {
        nix = import ../hackage/path-tree-0.2.0.0-r0-4e17e7680b21cb103312c271499de1abbcca1c7b1e8c546508a555257660938c.nix;
        revNum = 0;
        sha256 = "4e17e7680b21cb103312c271499de1abbcca1c7b1e8c546508a555257660938c";
        };
      r1 = {
        nix = import ../hackage/path-tree-0.2.0.0-r1-59a7d462c399a7c38717a860f0241f3c4511c6fe2d0b5e69e9c155e801c64591.nix;
        revNum = 1;
        sha256 = "59a7d462c399a7c38717a860f0241f3c4511c6fe2d0b5e69e9c155e801c64591";
        };
      default = "r1";
      };
    };
  }