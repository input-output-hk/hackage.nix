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
      identifier = { name = "fst"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Baldur Blöndal, John J. Camilleri";
      author = "Markus Forsberg";
      homepage = "http://www.cse.chalmers.se/alumni/markus/fstStudio/";
      url = "";
      synopsis = "Finite state transducers";
      description = "Fst is an application for construction and running of finite state\ntransducers, as based on the concepts of transducers and regular\nrelations developed by Xerox.  The syntax of Xerox's fst program has\nfunctioned as an inspiration for the syntax of fstStudio.\n\nThe application was written purely in Haskell, and is intended to be\na tool for the Haskell programmer, especially for ones that develop\nlanguage applications.\n\nThis package provides an interactive shell for parsing transducers\nspecified in a specialized FST language. See \"FST.FSTStudio\".\n\nThis package also provides a programmer's interface for building and\napplying transducers. See \"FST.TransducerInterface\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "fststudio" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-fst" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fst" or (errorHandler.buildDepError "fst"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }