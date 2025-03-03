{
  "1.0.0" = {
    sha256 = "e094494216e4cf658f64951c1d2d583e43e67a6a09808399c81f320ee0c5bfda";
    revisions = {
      r0 = {
        nix = import ../hackage/unconditional-jump-1.0.0-r0-a10fd0366cadbb5b65ab28d59b25db29c55b9aa8eb4ba7715b01f981cf1cbabb.nix;
        revNum = 0;
        sha256 = "a10fd0366cadbb5b65ab28d59b25db29c55b9aa8eb4ba7715b01f981cf1cbabb";
      };
      r1 = {
        nix = import ../hackage/unconditional-jump-1.0.0-r1-4d05361143dfa1503989170c8a98a7a0b76931cd2725f3638a7d001bccf02ed8.nix;
        revNum = 1;
        sha256 = "4d05361143dfa1503989170c8a98a7a0b76931cd2725f3638a7d001bccf02ed8";
      };
      default = "r1";
    };
  };
}