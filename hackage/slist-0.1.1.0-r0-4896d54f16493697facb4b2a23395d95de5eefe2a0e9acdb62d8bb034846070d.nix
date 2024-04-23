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
      identifier = { name = "slist"; version = "0.1.1.0"; };
      license = "MPL-2.0";
      copyright = "2019-2020 Veronika Romashkina";
      maintainer = "vrom911@gmail.com";
      author = "Veronika Romashkina";
      homepage = "https://github.com/vrom911/slist";
      url = "";
      synopsis = "Sized list";
      description = "This package implements @Slist@ data structure that stores the size\nof the list along with the list itself.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "slist-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
    };
  }