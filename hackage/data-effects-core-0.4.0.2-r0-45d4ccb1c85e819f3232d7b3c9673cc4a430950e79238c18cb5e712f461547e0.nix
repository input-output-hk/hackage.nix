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
      identifier = { name = "data-effects-core"; version = "0.4.0.2"; };
      license = "MPL-2.0";
      copyright = "2023-2025 Sayo contributors";
      maintainer = "ymdfield <ymdfield@outlook.jp>";
      author = "Sayo contributors <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "A basic framework for effect systems based on effects represented by GADTs.";
      description = "This library provides core definitions of [data-effects](https://hackage.haskell.org/package/data-effects).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."data-effects-core" or (errorHandler.buildDepError "data-effects-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
    };
  }