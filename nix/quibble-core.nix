{
  "0.0.0.1" = {
    sha256 = "0f2c5f51cee921dc6dd783bb7e39b06d72f0f3080a4397d603fd08c48a82efb7";
    revisions = {
      r0 = {
        nix = import ../hackage/quibble-core-0.0.0.1-r0-5282ecfa19f336b0634278c3aa5355b8014baeb3ad761936f168b7a4f2fef53d.nix;
        revNum = 0;
        sha256 = "5282ecfa19f336b0634278c3aa5355b8014baeb3ad761936f168b7a4f2fef53d";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "0cf5e46500242d2544b216d111ead6c25e0ab867213d77a08ce3d0df07c40c81";
    revisions = {
      r0 = {
        nix = import ../hackage/quibble-core-0.1.0.1-r0-66f75076f90fc86e685542dd19dab2591ffd394bccc25023b652cbb1268dd452.nix;
        revNum = 0;
        sha256 = "66f75076f90fc86e685542dd19dab2591ffd394bccc25023b652cbb1268dd452";
      };
      default = "r0";
    };
  };
}