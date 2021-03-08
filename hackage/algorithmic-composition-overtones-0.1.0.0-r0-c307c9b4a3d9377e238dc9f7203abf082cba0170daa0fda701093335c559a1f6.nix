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
      identifier = {
        name = "algorithmic-composition-overtones";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/algorithmic-composition-overtones";
      url = "";
      synopsis = "Some variants of the overtones functions to generate a timbre.";
      description = "Can be used with the Composition.Sound.Functional.Basics.overSoXSynthGG function or some other way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."algorithmic-composition-basic" or (errorHandler.buildDepError "algorithmic-composition-basic"))
          ];
        buildable = true;
        };
      };
    }