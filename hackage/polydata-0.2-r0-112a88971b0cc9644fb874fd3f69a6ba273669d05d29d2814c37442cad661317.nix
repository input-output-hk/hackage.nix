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
        name = "polydata";
        version = "0.2";
      };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "Wrap together data and it's constraints.";
      description = "This package, together with its dependency [polydata-core](https://hackage.haskell.org/package/polydata-core),\nallows one to pass data, particularly functions, together with a constraint which describes how\npolymorphic that data is. This constraint can then be used in a generic way to produce quite polymorphic functions,\nfor example, a \"map\" function that works on a pair of two different types.\n\nSee [Data.Poly](https://hackage.haskell.org/package/polydata-core/docs/Data-Poly.html)\nfor a basic tutorial.";
      buildType = "Simple";
    };
    components = {
      "polydata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.indextype)
          (hsPkgs.constraint-manip)
          (hsPkgs.polydata-core)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.indextype)
            (hsPkgs.constraint-manip)
            (hsPkgs.polydata-core)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }