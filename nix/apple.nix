{
  "0.1.0.0" = {
    sha256 = "c20804fb3a50267639e674fa110d9a1ef22d76da19d1bff7e25a9118f0e0b90b";
    revisions = {
      r0 = {
        nix = import ../hackage/apple-0.1.0.0-r0-a03695b3c1413d8fc3f75614a0b25990b04957b02805a9ca4e18743bbc16fbb1.nix;
        revNum = 0;
        sha256 = "a03695b3c1413d8fc3f75614a0b25990b04957b02805a9ca4e18743bbc16fbb1";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "0868dab87c08f4cb7f85db54b21ef3dc090fd39ccac5479a7baf577a39f6216a";
    revisions = {
      r0 = {
        nix = import ../hackage/apple-0.2.0.0-r0-fe6439ea41c7c42d7b1be5ad57380f22fab80af831e7c64d2341cec335bfa50f.nix;
        revNum = 0;
        sha256 = "fe6439ea41c7c42d7b1be5ad57380f22fab80af831e7c64d2341cec335bfa50f";
      };
      default = "r0";
    };
  };
}