{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "NearContextAlgebra";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hahn@geoinfo.tuwien.ac.at";
      author = "Jürgen Hahn";
      homepage = "";
      url = "";
      synopsis = "Context Algebra of near";
      description = "Model of the concept \"near\" influenced by several contexts";
      buildType = "Simple";
    };
    components = {
      exes = {
        "NearContextAlgebra" = {
          depends  = [
            (hsPkgs.ContextAlgebra)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.lattices)
            (hsPkgs.multiset)
          ];
        };
      };
    };
  }