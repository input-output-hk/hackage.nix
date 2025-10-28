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
      specVersion = "3.0";
      identifier = { name = "proquint"; version = "0.1.0.0"; };
      license = "EUPL-1.2";
      copyright = "(c) Francesco Gazzetta";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta";
      homepage = "https://sr.ht/~fgaz/haskell-proquint";
      url = "";
      synopsis = "Proquints: Identifiers that are Readable, Spellable, and Pronounceable";
      description = "Implementation of proquints: Identifiers that are Readable, Spellable, and Pronounceable.\n\nFollows the specification at https://arxiv.org/html/0901.4016";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      tests = {
        "proquint-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."proquint" or (errorHandler.buildDepError "proquint"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }