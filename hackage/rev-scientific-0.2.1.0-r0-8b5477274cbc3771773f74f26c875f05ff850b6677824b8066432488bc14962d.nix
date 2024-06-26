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
      specVersion = "2.4";
      identifier = { name = "rev-scientific"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "A library to provide special kind of big numbers writing. ";
      description = "Provides a function that shows the somewhat \"reversed\" scientific notation of the big 'Integer' number so that it is easier (more likely accurately) to compare at quick glance two numbers in such a notation by their order and values in the ordered list of the multiple values. Is intended to be used in PhLADiPreLiO.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }