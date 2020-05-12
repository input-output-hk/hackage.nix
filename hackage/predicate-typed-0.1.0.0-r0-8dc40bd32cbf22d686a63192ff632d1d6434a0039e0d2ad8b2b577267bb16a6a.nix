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
      specVersion = "1.12";
      identifier = { name = "predicate-typed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 gbwey";
      maintainer = "gbwey9@gmail.com";
      author = "Grant Weyburne";
      homepage = "https://github.com/github.com/gbwey#readme";
      url = "";
      synopsis = "Predicates, Refinement types and Dsl";
      description = "Please see the README on GitHub at <https://github.com/gbwey/predicate-typed#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."discrimination" or (errorHandler.buildDepError "discrimination"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          (hsPkgs."pretty-tree" or (errorHandler.buildDepError "pretty-tree"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."these-lens" or (errorHandler.buildDepError "these-lens"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tree-view" or (errorHandler.buildDepError "tree-view"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."discrimination" or (errorHandler.buildDepError "discrimination"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."predicate-typed" or (errorHandler.buildDepError "predicate-typed"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."pretty-tree" or (errorHandler.buildDepError "pretty-tree"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."these-lens" or (errorHandler.buildDepError "these-lens"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tree-view" or (errorHandler.buildDepError "tree-view"))
            ];
          buildable = true;
          };
        "predicate-typed-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."discrimination" or (errorHandler.buildDepError "discrimination"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."predicate-typed" or (errorHandler.buildDepError "predicate-typed"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."pretty-tree" or (errorHandler.buildDepError "pretty-tree"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."these-lens" or (errorHandler.buildDepError "these-lens"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tree-view" or (errorHandler.buildDepError "tree-view"))
            ];
          buildable = true;
          };
        };
      };
    }