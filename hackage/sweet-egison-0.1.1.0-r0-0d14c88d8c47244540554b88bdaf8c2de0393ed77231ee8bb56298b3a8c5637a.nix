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
      specVersion = "2.0";
      identifier = { name = "sweet-egison"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2020 coord_e";
      maintainer = "coord_e <me@coord-e.com>, Satoshi Egi <egi@egison.org>";
      author = "coord_e";
      homepage = "https://github.com/egison/sweet-egison#readme";
      url = "";
      synopsis = "Shallow embedding implementation of non-linear pattern matching";
      description = "The [sweet-egison](https://hackage.haskell.org/package/sweet-egison) is a shallow embedding implementation of non-linear pattern matching with extensible and polymorphic patterns.\nIn other words, this implements [Egison](https:///www.egison.org) pattern matching in Haskell by desugaring pattern expressions.\nThis library provides a base of the Pattern-Match-Oriented (PMO) programming style for Haskell users at a practical level of efficiency.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."backtracking" or (errorHandler.buildDepError "backtracking"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."egison-pattern-src" or (errorHandler.buildDepError "egison-pattern-src"))
          (hsPkgs."egison-pattern-src-th-mode" or (errorHandler.buildDepError "egison-pattern-src-th-mode"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."sweet-egison" or (errorHandler.buildDepError "sweet-egison"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "comb2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."sweet-egison" or (errorHandler.buildDepError "sweet-egison"))
          ];
          buildable = true;
        };
        "perm2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."sweet-egison" or (errorHandler.buildDepError "sweet-egison"))
          ];
          buildable = true;
        };
      };
    };
  }