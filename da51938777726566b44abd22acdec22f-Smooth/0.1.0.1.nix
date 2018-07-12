{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Smooth";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dillonhuff@gmail.com";
        author = "Dillon Huff";
        homepage = "";
        url = "";
        synopsis = "A tiny, lazy SMT solver";
        description = "A tiny, lazy SMT solver. This solver is based on algorithms\ndescribed in 'Decision Procedures: An Algorithmic Point of View'";
        buildType = "Simple";
      };
      components = {
        "Smooth" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.FirstOrderTheory
            hsPkgs.Proper
            hsPkgs.DifferenceLogic
            hsPkgs.HUnit
          ];
        };
      };
    }