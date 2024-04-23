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
      identifier = { name = "classy-effects-base"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2023 Yamada Ryo,\n2023 Casper Bach Poulsen and Cas van der Rest";
      maintainer = "Yamada Ryo <ymdfield@outlook.jp>";
      author = "Yamada Ryo <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "An interface for a handler-independent, typeclass-based effect system.";
      description = "This library provides definitions for CEPs (classy-effects protocols) to standardize and unify\nthe definition of effects in Haskell in a backend-library-agnostic manner. Please refer\nto [CEPs](https://github.com/sayo-hs/classy-effects/blob/master/CEPs/README.md) for details.\nThis library provides only the fundamental definitions for classy-effects. Please also refer to\nthe [classy-effects](https://hackage.haskell.org/package/classy-effects) package, which offers\nstandard effect definitions compliant with CEPs, and\nthe [classy-effects-th](https://hackage.haskell.org/package/classy-effects-th) package, which\nenables automatic compliance with CEPs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."classy-effects-base" or (errorHandler.buildDepError "classy-effects-base"))
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