{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HCodecs";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Giorgidze (GGG at CS dot NOTT dot AC dot UK)";
        author = "George Giorgidze";
        homepage = "http://cs.nott.ac.uk/~ggg/";
        url = "";
        synopsis = "The library to read, write and manipulate MIDI, WAV, and SoundFont2 files.";
        description = "The library provides functions to read write and manipulate Midi, Wav and SoundFont2 multimedia file formats.\nIt is written entirly in Haskell (without any FFI).\nIt uses efficient parsing and building combinators for binary data stored in ByteStrings (based on the one in 'binary' package).";
        buildType = "Simple";
      };
      components = {
        "HCodecs" = {
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