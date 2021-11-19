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
      identifier = { name = "ghc-bignum-orphans"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2021 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/haskell-compat/ghc-bignum-orphans";
      url = "";
      synopsis = "Backwards-compatible orphan instances for ghc-bignum";
      description = "@ghc-bignum-orphans@ defines orphan instances that mimic\ninstances available in later versions of @ghc-bignum@ to a\nwider (older) range of compilers. @ghc-bignum-orphans@ does\nnot export anything except the orphan instances themselves.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          ];
        buildable = true;
        };
      };
    }