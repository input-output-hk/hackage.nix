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
      identifier = { name = "heftia"; version = "0.7.0.0"; };
      license = "MPL-2.0";
      copyright = "2023-2025 Sayo contributors\n2016 Allele Dev; 2017 Ixperta Solutions s.r.o.; 2017 Alexis King";
      maintainer = "ymdfield <ymdfield@outlook.jp>";
      author = "Sayo contributors <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "higher-order algebraic effects done right";
      description = "This is the core package for [heftia-effects](https://hackage.haskell.org/package/heftia-effects).\n\nHeftia is an extensible effects library that generalizes \"Algebraic Effects and Handlers\" to higher-order effects, providing users with maximum flexibility and delivering standard and reasonable speed.\nIn its generalization, the focus is on ensuring predictable results based on simple, consistent semantics, while preserving soundness.\n\nPlease refer to the [Haddock documentation](https://hackage.haskell.org/package/heftia-0.5.0.0/docs/Control-Monad-Hefty.html) for usage and semantics.\nFor information on performance, please refer to [performance.md](https://github.com/sayo-hs/heftia/blob/v0.5.0/benchmark/performance.md).\n\nThis library is inspired by the paper:\n\n* Casper Bach Poulsen and Cas van der Rest. 2023. Hefty Algebras: Modular\n    Elaboration of Higher-Order Algebraic Effects. Proc. ACM Program. Lang. 7,\n    POPL, Article 62 (January 2023), 31 pages. <https://doi.org/10.1145/3571255>\n\nThe /elaboration/ approach proposed in the above paper allows for a straightforward treatment of higher-order effects.\n\nHeftia's data structure is an extension of the Freer monad, designed to be theoretically straightforward by eliminating ad-hoc elements.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
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
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }