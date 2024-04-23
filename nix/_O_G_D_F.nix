{
  "1.0.0.0" = {
    sha256 = "9f100e4c3a2b4a3aa55d0dffb877a44c48ec5957bbffa6b85707622facefc56a";
    revisions = {
      r0 = {
        nix = import ../hackage/OGDF-1.0.0.0-r0-f267ebe5837a92b71c6124b6d313ee31c9f7c6b4b1b30f662bdcd8adeef34db5.nix;
        revNum = 0;
        sha256 = "f267ebe5837a92b71c6124b6d313ee31c9f7c6b4b1b30f662bdcd8adeef34db5";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "471e2b8d22466bed8706f77e9ee3a8a81bb6608ca13e78e9f8d755fc3142b077";
    revisions = {
      r0 = {
        nix = import ../hackage/OGDF-1.0.0.1-r0-021dcd3f5a3125038d87ce6a0bd19df5bc07b3dbf061737d41e0c635d683c58e.nix;
        revNum = 0;
        sha256 = "021dcd3f5a3125038d87ce6a0bd19df5bc07b3dbf061737d41e0c635d683c58e";
      };
      default = "r0";
    };
  };
}