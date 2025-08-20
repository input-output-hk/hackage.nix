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
      specVersion = "2.2";
      identifier = { name = "creditmonad"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anton Lorenzen <anton.lorenzen@ed.ac.uk>";
      author = "Anton Lorenzen <anton.lorenzen@ed.ac.uk>";
      homepage = "https://github.com/anfelor/creditmonad#readme";
      url = "";
      synopsis = "Reasoning about amortized time complexity";
      description = "Persistent data structures are ubiquitous in functional\nprogramming languages and their designers frequently have to\nreason about amortized time complexity. But proving amortized\nbounds is difficult in a persistent setting, and pen-and-paper\nproofs give little assurance of correctness, while a full\nmechanization in a proof assistant can be too involved for the\ncasual user. This package defines a domain specific\nlanguage for testing the amortized time complexity of\npersistent data structures using QuickCheck. The DSL can\ngive strong evidence of correctness, while imposing low\noverhead on the user. The package includes implementations\nand tests of all lazy data structures given in Okasaki's book.\nSee the paper \"Lightweight Testing of Persistent Amortized Time\nComplexity in the Credit Monad\" (2025) for a detailed description.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
        ];
        buildable = true;
      };
      exes = {
        "creditmonad" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."creditmonad" or (errorHandler.buildDepError "creditmonad"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }