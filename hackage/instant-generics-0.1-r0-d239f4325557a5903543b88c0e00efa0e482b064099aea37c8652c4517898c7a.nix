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
      specVersion = "1.2";
      identifier = { name = "instant-generics"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Manuel Chakravarty, Gabriel Ditu, Roman Leshchinskiy,\nJose Pedro Magalhaes";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/InstantGenerics";
      url = "";
      synopsis = "Generic programming library with a sum of products view";
      description = "This is a generic programming library based on type classes and type families\nfirst described by Chakravarty et al. (see\n<http://www.cse.unsw.edu.au/~chak/project/generics/>). The current release\nis a simplified version mostly to support the rewriting library described\nin the paper:\n\n*  Thomas van Noort, Alexey Rodriguez Yakushev, Stefan Holdermans,\nJohan Jeuring, Bastiaan Heeren, Jose Pedro Magalhaes.\n/A Lightweight Approach to Datatype-Generic Rewriting./\nJournal of Functional Programming, Special Issue on Generic Programming,\n2010.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }