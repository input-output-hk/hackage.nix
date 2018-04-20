{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ContextAlgebra";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hahn@geoinfo.tuwien.ac.at";
        author = "Jürgen Hahn";
        homepage = "https://github.com/juergenhah/ContextAlgebra";
        url = "";
        synopsis = "Implementation of the context algebra.";
        description = "Implementation of the context algebra published in dissertation: Context Algebra applied to Spatial Concepts";
        buildType = "Simple";
      };
      components = {
        exes = {
          ContextAlgebra = {
            depends  = [
              hsPkgs.base
              hsPkgs.multiset
              hsPkgs.criterion
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.statistics
            ];
          };
        };
      };
    }