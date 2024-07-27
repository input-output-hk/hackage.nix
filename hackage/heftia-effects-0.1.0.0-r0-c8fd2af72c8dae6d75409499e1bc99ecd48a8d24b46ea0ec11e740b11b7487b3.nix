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
      identifier = { name = "heftia-effects"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2023 Yamada Ryo";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "Handlers for standard effects using Heftia.";
      description = "This library provides interpreters based\non [Heftia](https://hackage.haskell.org/package/heftia) for the standard effect classes\ncompliant with [CEPs](https://github.com/sayo-hs/classy-effects/blob/master/CEPs/README.md),\noffered by\nthe [classy-effects](https://hackage.haskell.org/package/classy-effects) package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
          (hsPkgs."classy-effects" or (errorHandler.buildDepError "classy-effects"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
        ];
        buildable = true;
      };
      exes = {
        "Teletype" = {
          depends = [
            (hsPkgs."classy-effects" or (errorHandler.buildDepError "classy-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "Logging" = {
          depends = [
            (hsPkgs."classy-effects" or (errorHandler.buildDepError "classy-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."loglevel" or (errorHandler.buildDepError "loglevel"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          ];
          buildable = true;
        };
        "Continuation" = {
          depends = [
            (hsPkgs."classy-effects" or (errorHandler.buildDepError "classy-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "Writer" = {
          depends = [
            (hsPkgs."classy-effects" or (errorHandler.buildDepError "classy-effects"))
            (hsPkgs."heftia" or (errorHandler.buildDepError "heftia"))
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."heftia-effects" or (errorHandler.buildDepError "heftia-effects"))
            (hsPkgs."classy-effects" or (errorHandler.buildDepError "classy-effects"))
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