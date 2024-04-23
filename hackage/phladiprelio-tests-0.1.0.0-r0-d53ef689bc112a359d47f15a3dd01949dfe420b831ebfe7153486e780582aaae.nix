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
      specVersion = "1.24";
      identifier = { name = "phladiprelio-tests"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko, 2023";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "https://hackage.haskell.org/package/phladiprelio-tests";
      url = "";
      synopsis = "Common for Ukrainian and general data for test mode.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }