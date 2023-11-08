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
      identifier = { name = "io-classes-mtl"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "2022-2023 Input Output Global Inc (IOG)";
      maintainer = "Marcin Szamotulski coot@coot.me";
      author = "Duncan Coutts, Marcin Szamotulski";
      homepage = "";
      url = "";
      synopsis = "Experimental MTL instances for io-classes";
      description = "MTL instances for\n[io-classes](https://hackage.hasekll.org/package/io-classes) package.\nSome of the instances are novel and some are still experimental.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."si-timers" or (errorHandler.buildDepError "si-timers"))
          ];
        buildable = true;
        };
      };
    }