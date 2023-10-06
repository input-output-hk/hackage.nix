{
  "0.1" = {
    sha256 = "7b4eb3c1c01d5f34edcd5bd480f8340f4a7d491d50e0805d6695f0ded71e0c48";
    revisions = {
      r0 = {
        nix = import ../hackage/binder-0.1-r0-56fb2955eccb140182dfb64862eb80344479990108ae5c664f74d8534a18db0c.nix;
        revNum = 0;
        sha256 = "56fb2955eccb140182dfb64862eb80344479990108ae5c664f74d8534a18db0c";
        };
      default = "r0";
      };
    };
  "0.2" = {
    sha256 = "4e10d022ed8744c67ea84ef353d7e4d426703c8b84b6de901aca9e9460374513";
    revisions = {
      r0 = {
        nix = import ../hackage/binder-0.2-r0-80a0ed14257f3d18f0a0a2ee6d2b3670bc66d456e8eb4c0bc2554d9b9ec343bd.nix;
        revNum = 0;
        sha256 = "80a0ed14257f3d18f0a0a2ee6d2b3670bc66d456e8eb4c0bc2554d9b9ec343bd";
        };
      default = "r0";
      };
    };
  }