{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "midi-simple";
          version = "0.1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "2017 Paul Ogris";
        maintainer = "paul@tsahyt.com";
        author = "Paul Ogris";
        homepage = "https://github.com/tsahyt/midi-simple#readme";
        url = "";
        synopsis = "A simple and fast library for working with MIDI messages";
        description = "Please see README.rst";
        buildType = "Simple";
      };
      components = {
        midi-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        exes = {
          midi-dump = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.midi-simple
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-attoparsec
            ];
          };
          re-encode = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.midi-simple
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-attoparsec
            ];
          };
        };
        tests = {
          midi-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.midi-simple
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.generic-random
              hsPkgs.bytestring
              hsPkgs.hspec-attoparsec
              hsPkgs.hspec
              hsPkgs.attoparsec
            ];
          };
        };
        benchmarks = {
          midi-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.midi-simple
              hsPkgs.criterion
              hsPkgs.bytestring
            ];
          };
        };
      };
    }