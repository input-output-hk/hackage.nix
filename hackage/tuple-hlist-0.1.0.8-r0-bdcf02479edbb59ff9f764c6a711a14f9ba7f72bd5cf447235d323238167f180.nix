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
      specVersion = "1.8";
      identifier = { name = "tuple-hlist"; version = "0.1.0.8"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2012, Nicolas Dudebout <nicolas.dudebout@gatech.edu>";
      maintainer = "Nicolas Dudebout <nicolas.dudebout@gatech.edu>";
      author = "Nicolas Dudebout";
      homepage = "http://github.com/dudebout/tuple-hlist";
      url = "";
      synopsis = "Functions to convert between tuples and HLists.";
      description = "Functions to convert between tuples and HLists, overloaded on tuple size.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
          ];
        buildable = true;
        };
      };
    }