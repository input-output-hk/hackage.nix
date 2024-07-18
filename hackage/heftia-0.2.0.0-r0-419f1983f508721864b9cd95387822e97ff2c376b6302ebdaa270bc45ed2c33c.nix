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
      specVersion = "2.4";
      identifier = { name = "heftia"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "2023-2024 Yamada Ryo";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "higher-order effects done right";
      description = "Heftia is a higher-order effects version of Freer.\n\nThis library provides \"[continuation-based semantics](https://github.com/lexi-lambda/eff/blob/master/notes/semantics-zoo.md)\"\nfor higher-order effects, the same as [lexi-lambda's eff](https://github.com/lexi-lambda/eff).\nInstead of using the @IO@ monad to implement delimited continuations for effects,\nHeftia internally uses @Freer@ monad.\n\nThe paper\n\n* Casper Bach Poulsen and Cas van der Rest. 2023. Hefty Algebras: Modular\nElaboration of Higher-Order Algebraic Effects. Proc. ACM Program. Lang. 7,\nPOPL, Article 62 (January 2023), 31 pages. <https://doi.org/10.1145/3571255>\n\ninspires this library.\nHefty trees, proposed by the above paper, are extensions of free monads,\nallowing for a straightforward treatment of higher-order effects.\n\nThis library provides Hefty monads and Freer monads, encoded into data\ntypes in several ways to enable tuning in pursuit of high performance.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
          (hsPkgs."membership" or (errorHandler.buildDepError "membership"))
          (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          (hsPkgs."singletons-th" or (errorHandler.buildDepError "singletons-th"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }