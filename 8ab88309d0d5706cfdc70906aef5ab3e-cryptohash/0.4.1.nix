{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cryptohash";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez";
        homepage = "";
        url = "";
        synopsis = "crypto hashes fast and practical";
        description = "Efficient crypto hash computation";
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
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
            ];
          };
        };
      };
    }