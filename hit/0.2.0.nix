{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      executable = false;
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hit";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hit";
        url = "";
        synopsis = "Git operations";
        description = "Provides low level git operations";
        buildType = "Simple";
      };
      components = {
        hit = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.parsec
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.cryptohash
            hsPkgs.vector
            hsPkgs.random
            hsPkgs.zlib
            hsPkgs.zlib-bindings
            hsPkgs.patience
            hsPkgs.bytedump
            hsPkgs.unix
          ];
        };
        exes = {
          Hit = {
            depends  = optionals _flags.executable [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.hashtables
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.zlib
              hsPkgs.bytedump
            ];
          };
          Tests = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }