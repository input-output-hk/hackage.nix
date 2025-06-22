{
  "0.1.0" = {
    sha256 = "464d0508632268e0f92613480472defce476f90fbc09d26b2e340b9a6dd82d96";
    revisions = {
      r0 = {
        nix = import ../hackage/ppad-chacha-0.1.0-r0-b44c5925d84551bf7595d0227fa91aff088b7e8ea6f17a41b9c2cbe5c0527947.nix;
        revNum = 0;
        sha256 = "b44c5925d84551bf7595d0227fa91aff088b7e8ea6f17a41b9c2cbe5c0527947";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "2c6387f28f70b259138a716c09eb864ea30b5c6abd2a4a0ea68e66e3547819ff";
    revisions = {
      r0 = {
        nix = import ../hackage/ppad-chacha-0.2.0-r0-0e134087c94076a2ab856889b987338f0a1dfd46826eef567d8d067829947de1.nix;
        revNum = 0;
        sha256 = "0e134087c94076a2ab856889b987338f0a1dfd46826eef567d8d067829947de1";
      };
      default = "r0";
    };
  };
}