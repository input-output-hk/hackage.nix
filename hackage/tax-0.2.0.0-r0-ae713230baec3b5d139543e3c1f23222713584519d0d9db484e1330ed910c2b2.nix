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
      specVersion = "1.10";
      identifier = { name = "tax"; version = "0.2.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2018 Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/frasertweedale/hs-tax";
      url = "";
      synopsis = "Types and combinators for taxes";
      description = "This library provides combinators for constructing taxes.  It is based on\nthe <https://hackage.haskell.org/package/dollaridoos dollaridoos> library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dollaridoos" or (errorHandler.buildDepError "dollaridoos"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
    };
  }