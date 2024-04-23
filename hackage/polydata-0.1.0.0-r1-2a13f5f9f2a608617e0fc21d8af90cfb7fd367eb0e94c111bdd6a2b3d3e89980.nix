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
      identifier = { name = "polydata"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "Wrap together data and its constraints.";
      description = "This package allows one to pass data, particularly functions, together with a constraint which describes how\npolymorphic that data is. This constraint can then be used in a generic way to produce quite polymorphic functions,\nfor example, a \"map\" function that works on a pair of two different types,";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indextype" or (errorHandler.buildDepError "indextype"))
          (hsPkgs."constraint-manip" or (errorHandler.buildDepError "constraint-manip"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indextype" or (errorHandler.buildDepError "indextype"))
            (hsPkgs."constraint-manip" or (errorHandler.buildDepError "constraint-manip"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }