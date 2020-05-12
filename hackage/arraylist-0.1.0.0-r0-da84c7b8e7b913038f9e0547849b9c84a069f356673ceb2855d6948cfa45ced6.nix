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
      specVersion = "2.2";
      identifier = { name = "arraylist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "copyright (c) 2018 andrewthad";
      maintainer = "chessai1996@gmail.com";
      author = "andrewthad";
      homepage = "https://github.com/chessai/arraylist";
      url = "";
      synopsis = "Memory-efficient ArrayList implementation";
      description = "An ArrayList that carries information about the amount of data in it\nthat is actually used, and tries to keep space usage to a minimum.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."initialize" or (errorHandler.buildDepError "initialize"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arraylist" or (errorHandler.buildDepError "arraylist"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }