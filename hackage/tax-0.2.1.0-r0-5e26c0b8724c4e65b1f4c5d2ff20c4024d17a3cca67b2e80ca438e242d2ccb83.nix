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
      specVersion = "2.2";
      identifier = { name = "tax"; version = "0.2.1.0"; };
      license = "AGPL-3.0-or-later";
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
        ];
        buildable = true;
      };
    };
  }