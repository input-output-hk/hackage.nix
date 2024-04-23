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
      identifier = { name = "data-extend-generic"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 Yu Li";
      maintainer = "ylilarry@gmail.com";
      author = "Yu Li";
      homepage = "http://github.com/githubuser/data-extend-generic#readme";
      url = "";
      synopsis = "Extend Haskell data or newtype like in OOP languages";
      description = "This package allows you to extend Haskell data or newtype like in OOP languages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "data-extend-generic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-extend-generic" or (errorHandler.buildDepError "data-extend-generic"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }