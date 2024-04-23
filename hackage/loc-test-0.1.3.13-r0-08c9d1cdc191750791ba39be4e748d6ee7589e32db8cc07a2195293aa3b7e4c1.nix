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
      identifier = { name = "loc-test"; version = "0.1.3.13"; };
      license = "Apache-2.0";
      copyright = "2017 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/loc-test";
      url = "";
      synopsis = "Hedgehog generators for loc";
      description = "This package contains Hedgehog generators types defined\nin the /loc/ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."loc" or (errorHandler.buildDepError "loc"))
        ];
        buildable = true;
      };
    };
  }