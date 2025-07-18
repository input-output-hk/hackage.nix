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
      specVersion = "3.0";
      identifier = { name = "linear-free"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "joosep.jaager@gmail.com";
      author = "Joosep Jääger";
      homepage = "";
      url = "";
      synopsis = "Linear free monads";
      description = "This package implements free monads on top of `linear-base`. Linear free monads \nare useful to implement domain specific languages that for example have to \nkeep track of resources.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
        ];
        buildable = true;
      };
      tests = {
        "linear-free-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."linear-free" or (errorHandler.buildDepError "linear-free"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }