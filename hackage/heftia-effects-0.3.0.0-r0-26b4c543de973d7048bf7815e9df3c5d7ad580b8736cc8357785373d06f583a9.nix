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
      identifier = { name = "heftia-effects"; version = "0.3.0.0"; };
      license = "MPL-2.0";
      copyright = "2023 Yamada Ryo";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
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
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
          (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
        ];
        buildable = true;
      };
      exes = {
        "Teletype" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "KeyedEffects" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "Logging" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "Continuation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "Continuation2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
          buildable = true;
        };
        "Writer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
        "SemanticsZoo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }