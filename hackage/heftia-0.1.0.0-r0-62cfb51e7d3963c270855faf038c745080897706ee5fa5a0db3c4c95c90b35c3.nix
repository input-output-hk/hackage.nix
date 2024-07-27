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
      identifier = { name = "heftia"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2023 Yamada Ryo,\n2023 Casper Bach Poulsen and Cas van der Rest";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "Higher-order version of Freer.";
      description = "Heftia, a composition of hefty trees and co-Yoneda, is a higher-order\neffects version of Freer.\n\nThe paper\n\n* Casper Bach Poulsen and Cas van der Rest. 2023. Hefty Algebras: Modular\nElaboration of Higher-Order Algebraic Effects. Proc. ACM Program. Lang. 7,\nPOPL, Article 62 (January 2023), 31 pages. <https://doi.org/10.1145/3571255>\n\ninspires this library.\nHefty trees, proposed by the above paper, are extensions of free monads,\nallowing for a straightforward treatment of higher-order effects.\n\nThis library provides Heftia monads and Freer monads, encoded into data\ntypes in several ways to enable tuning in pursuit of high performance.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-effects-base" or (errorHandler.buildDepError "classy-effects-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
          (hsPkgs."membership" or (errorHandler.buildDepError "membership"))
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