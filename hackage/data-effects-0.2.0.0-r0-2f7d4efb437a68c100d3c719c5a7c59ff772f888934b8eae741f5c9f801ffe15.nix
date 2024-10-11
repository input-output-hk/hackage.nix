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
      identifier = { name = "data-effects"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "2023-2024 Sayo Koyoneda";
      maintainer = "Sayo Koyoneda <ymdfield@outlook.jp>";
      author = "Sayo Koyoneda <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "A basic framework for effect systems based on effects represented by GADTs.";
      description = "A basic framework for a Haskell effect system library based on GADTs-based effect representations\nwith a style that separates first-order effects and higher-order effects.\n\nThis library set was created by being separated from\nthe [Heftia](https://hackage.haskell.org/package/heftia) extensible effects library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-effects-core" or (errorHandler.buildDepError "data-effects-core"))
          (hsPkgs."data-effects-th" or (errorHandler.buildDepError "data-effects-th"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."data-effects" or (errorHandler.buildDepError "data-effects"))
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