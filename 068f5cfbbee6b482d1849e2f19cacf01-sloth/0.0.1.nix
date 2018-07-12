{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "sloth";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jan Christiansen <jac@informatik.uni-kiel.de>";
        author = "Jan Christiansen";
        homepage = "http://www.informatik.uni-kiel.de/en/computer-aided-program-development/research/sloth/";
        url = "";
        synopsis = "Testing for minimal strictness";
        description = "Sloth is a library for testing whether functions are minmally strict.";
        buildType = "Simple";
      };
      components = {
        "sloth" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.mtl
          ];
        };
      };
    }