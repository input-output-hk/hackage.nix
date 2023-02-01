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
      identifier = { name = "filters-basic"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/filters-basic";
      url = "";
      synopsis = "Allows to change the structure of the function output.";
      description = "Allows to change the structure of the function output for the functions of arguments whose data types have RealFrac instances. Has basic functions for the filters. Is taken from the uniqueness-periods-vector-filters package that is intended to be rewritten. These functions are basic for it and for its successor, phonetic-languages-filters-array package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }