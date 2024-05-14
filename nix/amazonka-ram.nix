{
  "2.0" = {
    sha256 = "7ffd61ac342eaeaa5b4945718d0e5534305724f11aa748a75b5674f971819e7e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ram-2.0-r0-e51e9fdfd45b42bd1ef382b6fd3a895a53d8ff01d3f857f78dcbe45585eba8c6.nix;
        revNum = 0;
        sha256 = "e51e9fdfd45b42bd1ef382b6fd3a895a53d8ff01d3f857f78dcbe45585eba8c6";
      };
      r1 = {
        nix = import ../hackage/amazonka-ram-2.0-r1-7130b80a388ec71f9212947f60f33531a733b61f2502b4401defab00322b3148.nix;
        revNum = 1;
        sha256 = "7130b80a388ec71f9212947f60f33531a733b61f2502b4401defab00322b3148";
      };
      default = "r1";
    };
  };
}