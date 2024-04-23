{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "polydata"; version = "0.3.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indextype" or (errorHandler.buildDepError "indextype"))
          (hsPkgs."constraint-manip" or (errorHandler.buildDepError "constraint-manip"))
          (hsPkgs."polydata-core" or (errorHandler.buildDepError "polydata-core"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indextype" or (errorHandler.buildDepError "indextype"))
            (hsPkgs."constraint-manip" or (errorHandler.buildDepError "constraint-manip"))
            (hsPkgs."polydata-core" or (errorHandler.buildDepError "polydata-core"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }