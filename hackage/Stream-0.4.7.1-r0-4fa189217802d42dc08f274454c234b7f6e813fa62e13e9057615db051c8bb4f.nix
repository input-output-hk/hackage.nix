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
      specVersion = "1.0";
      identifier = { name = "Stream"; version = "0.4.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <wouter.swierstra@gmail.com>";
      author = "Wouter Swierstra <wouter.swierstra@gmail.com>\nBas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A library for manipulating infinite lists.";
      description = "This package implements functions, analogous\nto those from Data.List, to create and manipulate\ninfinite lists: @data Stream a = Cons a (Stream a)@.\nIt provides alternative definitions for those\nPrelude functions that make sense for such streams.\nNote that this package has (almost)\nnothing to do with the work on /Stream Fusion/ by\nDuncan Coutts, Roman Leshchinskiy, and Don Stewart.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."lazysmallcheck" or (errorHandler.buildDepError "lazysmallcheck"))
        ];
        buildable = true;
      };
    };
  }