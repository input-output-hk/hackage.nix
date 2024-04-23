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
      identifier = { name = "FiniteMap"; version = "0.1"; };
      license = "BSD-4-Clause";
      copyright = "The University of Glasgow 2001";
      maintainer = "Pepe Iborra <mnislaih@gmail.com>";
      author = "The University of Glasgow 2001";
      homepage = "";
      url = "";
      synopsis = "A finite map implementation, derived from the paper: Efficient sets: a balancing act, S. Adams, Journal of functional programming 3(4) Oct 1993, pp553-562";
      description = "This is the deprecated Data.FiniteMap library, often useful to get old code to build when you are too lazy to update it.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }