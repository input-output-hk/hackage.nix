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
      identifier = { name = "dobutokO-effects"; version = "0.6.0.0"; };
      license = "MIT";
      copyright = "(c) 2020 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/dobutokO-effects";
      url = "";
      synopsis = "A library to deal with SoX effects and possibilities";
      description = "Can be used to get access to different SoX possibilities";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dobutokO-frequency" or (errorHandler.buildDepError "dobutokO-frequency"))
        ];
        buildable = true;
      };
    };
  }