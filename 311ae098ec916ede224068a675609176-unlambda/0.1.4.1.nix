{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unlambda";
          version = "0.1.4.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Nikolay Amiantov <ab@fmap.me>";
        author = "Ørjan Johansen <oerjan@nvg.ntnu.no>\nDon Stewart <http://www.cse.unsw.edu.au/~dons>";
        homepage = "";
        url = "";
        synopsis = "Unlambda interpreter";
        description = "This is an interpreter of the Unlambda language,\nwritten in the pure, lazy, functional language Haskell.";
        buildType = "Simple";
      };
      components = {
        "unlambda" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.mtl
          ];
        };
        exes = {
          "unlambda" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
            ];
          };
        };
      };
    }