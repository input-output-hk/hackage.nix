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
      identifier = { name = "heftia-effects"; version = "0.4.0.1"; };
      license = "MPL-2.0";
      copyright = "2023-2024 Sayo Koyoneda";
      maintainer = "Sayo Koyoneda <ymdfield@outlook.jp>";
      author = "Sayo Koyoneda <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "higher-order effects done right";
      description = "This library is the battery-included version of the [heftia](https://hackage.haskell.org/package/heftia) package,\nproviding interpreters for standard effects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
          (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "Teletype" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "KeyedEffects" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "Logging" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "Continuation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "Continuation2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
          buildable = true;
        };
        "Writer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "SemanticsZoo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "FileSystemProvider" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "heftia-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."eveff" or (errorHandler.buildDepError "eveff"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."eff" or (errorHandler.buildDepError "eff"))
            (hsPkgs."mpeff" or (errorHandler.buildDepError "mpeff"))
          ];
          buildable = true;
        };
      };
    };
  }