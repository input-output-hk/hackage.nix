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
      identifier = { name = "classy-effects-th"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2023 Yamada Ryo,\n2020 Michael Szvetits,\n2010-2011 Patrick Bahr";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "Automatic compliance with the classy-effects protocols";
      description = "This package provides Template Haskell functions that enable automatic compliance with CEPs\n(classy-effects protocols), offering a unified framework for defining effects in Haskell.\nCEPs aim to standardize and unify the definition of effects in Haskell in a\nbackend-library-agnostic manner. Please refer\nto [CEPs](https://github.com/sayo-hs/classy-effects/blob/master/CEPs/README.md) for details.\nPlease also refer to the [classy-effects](https://hackage.haskell.org/package/classy-effects)\npackage, which offers standard effect definitions compliant with CEPs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-effects-base" or (errorHandler.buildDepError "classy-effects-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
        ];
        buildable = true;
      };
      tests = {
        "Example" = {
          depends = [
            (hsPkgs."classy-effects-th" or (errorHandler.buildDepError "classy-effects-th"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-effects-base" or (errorHandler.buildDepError "classy-effects-base"))
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