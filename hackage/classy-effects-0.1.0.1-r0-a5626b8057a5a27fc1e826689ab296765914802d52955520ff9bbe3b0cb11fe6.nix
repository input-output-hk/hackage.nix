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
      identifier = { name = "classy-effects"; version = "0.1.0.1"; };
      license = "MPL-2.0";
      copyright = "2023 Yamada Ryo";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "An interface for a handler-independent, typeclass-based effect system.";
      description = "This library provides definitions for CEPs (classy-effects protocols) to standardize and unify\nthe definition of effects in Haskell in a backend-library-agnostic manner. It also includes\nseveral standard effect definitions defined in compliance with CEPs, and Template Haskell\nfunctions to automatically make type classes conform to CEPs as effect classes.\n\nPlease refer\nto [CEPs](https://github.com/sayo-hs/classy-effects/blob/master/CEPs/README.md) for details.\n\nThe Template Haskell functions are re-exported\nfrom the [classy-effects-th](https://hackage.haskell.org/package/classy-effects-th) package,\nwhile the fundamental definitions are re-exported\nfrom the [classy-effects-base](https://hackage.haskell.org/package/classy-effects-base)\npackage.\n\n__This 'classy-effects' project was abandoned due to the discovery of fundamental difficulties.__\nThe reasons are as follows: <https://github.com/orgs/sayo-hs/projects/4?pane=issue&itemId=48547880>\n__As an alternative, consider using 'sayo-hs/data-effects', a GADTs-based common effect representation foundation:__\n<https://github.com/sayo-hs/data-effects>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-effects-base" or (errorHandler.buildDepError "classy-effects-base"))
          (hsPkgs."classy-effects-th" or (errorHandler.buildDepError "classy-effects-th"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."classy-effects" or (errorHandler.buildDepError "classy-effects"))
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