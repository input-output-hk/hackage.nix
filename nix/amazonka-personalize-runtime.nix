{
  "2.0" = {
    sha256 = "50a5ba5290d973d3c5afde022a4b4007e0fb4c830d98409fc3b8c98da9703777";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-personalize-runtime-2.0-r0-9714c90e5d6427beb6e853c55c0614ed90bd27a3f28490fbd568619db5d565bf.nix;
        revNum = 0;
        sha256 = "9714c90e5d6427beb6e853c55c0614ed90bd27a3f28490fbd568619db5d565bf";
      };
      r1 = {
        nix = import ../hackage/amazonka-personalize-runtime-2.0-r1-90b4b9c1117f7f1178c3b5926b8981946bd9635708a712222ed04c6e0443ada2.nix;
        revNum = 1;
        sha256 = "90b4b9c1117f7f1178c3b5926b8981946bd9635708a712222ed04c6e0443ada2";
      };
      default = "r1";
    };
  };
}