{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HCodecs";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 George Giorgidze";
        maintainer = "George Giorgidze (GGG at CS dot NOTT dot AC dot UK)";
        author = "George Giorgidze";
        homepage = "http://www.cs.nott.ac.uk/~ggg/";
        url = "";
        synopsis = "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files.";
        description = "The library provides functions to read, write and manipulate MIDI, WAVE and SoundFont2 multimedia files. It is written entirely in Haskell (without any FFI). It uses efficient parsing and building combinators for binary data stored in ByteStrings (based on the one in 'binary' package).\n\nCorrectness of significant parts of the library has been validated with QuickCheck and Haskell Program Coverage (HPC) tool-kits.\n\nHPC results can be seen at <http://www.cs.nott.ac.uk/~ggg/hpc/HCodecs/hpc_index.html>.";
        buildType = "Simple";
      };
      components = {
        HCodecs = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.array
          ];
        };
      };
    }