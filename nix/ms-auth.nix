{
  "0.1.0.0" = {
    sha256 = "59812b21aeb1f993e3317e9b92b953f514949fab18d46f47a5b8be479cef9d7b";
    revisions = {
      r0 = {
        nix = import ../hackage/ms-auth-0.1.0.0-r0-15296d1ffbdabcad6aa2bb4a249dffa4993dcff50564cf6f610964b963f87eb3.nix;
        revNum = 0;
        sha256 = "15296d1ffbdabcad6aa2bb4a249dffa4993dcff50564cf6f610964b963f87eb3";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "1741cd66d1d5f5e6c059663fe454b96a4ad74f3f2e61edd0e7f6a7fc5a8212f8";
    revisions = {
      r0 = {
        nix = import ../hackage/ms-auth-0.2.0.0-r0-88ed725b998be68542b57a0e75b3b705a940d22b4e31fdcf01a0470e1bce3c11.nix;
        revNum = 0;
        sha256 = "88ed725b998be68542b57a0e75b3b705a940d22b4e31fdcf01a0470e1bce3c11";
        };
      r1 = {
        nix = import ../hackage/ms-auth-0.2.0.0-r1-8c056c8408e927bcab241f053de359c777e5b877fb80517cca27da9440888ece.nix;
        revNum = 1;
        sha256 = "8c056c8408e927bcab241f053de359c777e5b877fb80517cca27da9440888ece";
        };
      default = "r1";
      };
    };
  }