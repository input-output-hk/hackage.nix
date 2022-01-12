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
      identifier = { name = "cli-arguments"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "";
      url = "";
      synopsis = "A library to process command line arguments in some more convenient way.";
      description = "Uses three types of the command line arguments and order of their parsing. Usually firstly the framed by some string delimiter (the different ones) are parsed, then the groups of arguments and then the rest single-field arguments. All these groups must be not nested one into the others.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }