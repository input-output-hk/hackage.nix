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
      identifier = { name = "term-rewriting"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "haskell-rewriting@informatik.uibk.ac.at";
      author = "Martin Avanzini,\nBertram Felgenhauer,\nChristian Sternagel,\nIlya Epifanov";
      homepage = "http://cl-informatik.uibk.ac.at/software/haskell-rewriting/";
      url = "";
      synopsis = "Term Rewriting Library";
      description = "Yet Another Term Rewriting Library.\n\nThis library provides basic data types and functionality for first order\nterm rewriting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."union-find-array" or (errorHandler.buildDepError "union-find-array"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."term-rewriting" or (errorHandler.buildDepError "term-rewriting"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }