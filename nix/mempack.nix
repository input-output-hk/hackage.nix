{
  "0.1.0.0" = {
    sha256 = "1e9e5e13a2079d972e0805d6005e02ab616aa62303bf0ba480583ff11468c2ab";
    revisions = {
      r0 = {
        nix = import ../hackage/mempack-0.1.0.0-r0-fba1e743ad0631e14b82001717640bafe369d18fc70567c27b0b50ebde8797bb.nix;
        revNum = 0;
        sha256 = "fba1e743ad0631e14b82001717640bafe369d18fc70567c27b0b50ebde8797bb";
      };
      r1 = {
        nix = import ../hackage/mempack-0.1.0.0-r1-b7b557997514e9001c53554b3992380762e2797363e99d949fe630958a6c3173.nix;
        revNum = 1;
        sha256 = "b7b557997514e9001c53554b3992380762e2797363e99d949fe630958a6c3173";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "d810ce2f0a9b78559cce321161d9476c30bcb88467988c34761850902345def5";
    revisions = {
      r0 = {
        nix = import ../hackage/mempack-0.1.1.0-r0-385efc7ed3ed3a6df5565a2013c90cda1aa0e02254b39581ded4d9069af6f44e.nix;
        revNum = 0;
        sha256 = "385efc7ed3ed3a6df5565a2013c90cda1aa0e02254b39581ded4d9069af6f44e";
      };
      r1 = {
        nix = import ../hackage/mempack-0.1.1.0-r1-f5e81715af31f133b36aa5a05282a0ecd3fc5a4d788fa75ae08e974d35bb3a74.nix;
        revNum = 1;
        sha256 = "f5e81715af31f133b36aa5a05282a0ecd3fc5a4d788fa75ae08e974d35bb3a74";
      };
      r2 = {
        nix = import ../hackage/mempack-0.1.1.0-r2-ea2b2984e8881a7f45cb24b45c409185f7e32bc09837d11666e80d4dc6500965.nix;
        revNum = 2;
        sha256 = "ea2b2984e8881a7f45cb24b45c409185f7e32bc09837d11666e80d4dc6500965";
      };
      default = "r2";
    };
  };
  "0.1.2.0" = {
    sha256 = "8776e207b9880e095dce828c7bc129f2e5b01c55a0c294857f7d99ae57633b52";
    revisions = {
      r0 = {
        nix = import ../hackage/mempack-0.1.2.0-r0-dba0358d46e207f8e065cbd816216f63b1eb401cff0ec7b3951758a7c6bf9326.nix;
        revNum = 0;
        sha256 = "dba0358d46e207f8e065cbd816216f63b1eb401cff0ec7b3951758a7c6bf9326";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "ca58bc65845ad988fab573f146dd70d44a431045624d081e7f1748916806355f";
    revisions = {
      r0 = {
        nix = import ../hackage/mempack-0.2.0.0-r0-596577bc74650a405eac3d8c1a4976d53dc09a9226fa6fee6420cb2296febeb5.nix;
        revNum = 0;
        sha256 = "596577bc74650a405eac3d8c1a4976d53dc09a9226fa6fee6420cb2296febeb5";
      };
      default = "r0";
    };
  };
}