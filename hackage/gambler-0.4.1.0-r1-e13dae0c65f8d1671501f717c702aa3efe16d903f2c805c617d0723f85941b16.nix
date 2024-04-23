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
      identifier = { name = "gambler"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2013-2016 Gabriella Gonzalez, 2023 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Gabriella Gonzalez, Chris Martin";
      homepage = "";
      url = "";
      synopsis = "Composable, streaming, and efficient left folds";
      description = "This library provides strict left folds that stream in constant\nmemory, and you can combine folds using @Applicative@ style to derive new\nfolds that still traverse the list only once.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test-gambler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gambler" or (errorHandler.buildDepError "gambler"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }