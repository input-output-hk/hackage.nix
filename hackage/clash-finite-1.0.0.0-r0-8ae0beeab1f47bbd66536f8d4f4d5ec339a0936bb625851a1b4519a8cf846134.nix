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
    flags = { test = true; large-tuples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "clash-finite"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Copyright © 2024-2025, Felix Klein";
      maintainer = "felix@qbaylogic.com";
      author = "Felix Klein";
      homepage = "https://github.com/kleinreact/clash-finite";
      url = "";
      synopsis = "A class for types with only finitely many inhabitants";
      description = "Finite is a class for types with only finitely many inhabitants\nand can be considered a more hardware-friendly alternative to\nBounded and Enum, utilizing Index instead of Int and vectors\ninstead of lists.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "unittests" = {
          depends = pkgs.lib.optionals (!!flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
            (hsPkgs."clash-finite" or (errorHandler.buildDepError "clash-finite"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = if !flags.test then false else true;
        };
      };
    };
  }