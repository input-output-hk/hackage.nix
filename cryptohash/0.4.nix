{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      unittest = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cryptohash";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez";
        homepage = "";
        url = "";
        synopsis = "crypto hashes fast and pratical";
        description = "Efficient crypto hash computation";
        buildType = "Simple";
      };
      components = {
        cryptohash = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
            ];
          };
        };
      };
    }