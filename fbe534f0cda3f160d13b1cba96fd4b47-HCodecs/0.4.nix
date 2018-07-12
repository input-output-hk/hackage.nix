{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HCodecs";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2014 George Giorgidze";
        maintainer = "George Giorgidze (giorgidze@gmail.com)";
        author = "George Giorgidze";
        homepage = "http://www-db.informatik.uni-tuebingen.de/team/giorgidze";
        url = "";
        synopsis = "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files.";
        description = "The library provides functions to read, write and manipulate MIDI, WAVE and SoundFont2 multimedia files. It is written entirely in Haskell (without any FFI). It uses efficient  parsing and building combinators for binary data stored in ByteStrings (based on the one in 'binary' package).\n\nCorrectness of significant parts of the library has been validated with QuickCheck and Haskell Program Coverage (HPC) tool-kits.";
        buildType = "Simple";
      };
      components = {
        "HCodecs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.array
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.random
              hsPkgs.array
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }