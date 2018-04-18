{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cryptohash";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez";
        homepage = "";
        url = "";
        synopsis = "collection of crypto hashes, fast, pure and practical";
        description = "A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,\nwith performance close to the fastest implementations available in others languages.\n\nThe implementations are made in C with a haskell FFI wrapper that hide the C implementation.";
        buildType = "Simple";
      };
      components = {
        cryptohash = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          Tests = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
            ];
          };
        };
      };
    }