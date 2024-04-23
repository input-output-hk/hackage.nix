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
      identifier = { name = "loc-test"; version = "0.1.2.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/haskell-libraries";
      url = "";
      synopsis = "Test-related utilities related to the /loc/ package.";
      description = "Test-related utilities related to the /loc/ package. Currently contains only\nHedgehog generators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."loc" or (errorHandler.buildDepError "loc"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
        ];
        buildable = true;
      };
    };
  }