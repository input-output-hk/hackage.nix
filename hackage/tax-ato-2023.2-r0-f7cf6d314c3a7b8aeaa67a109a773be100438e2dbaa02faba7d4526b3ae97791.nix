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
      identifier = { name = "tax-ato"; version = "2023.2"; };
      license = "AGPL-3.0-or-later";
      copyright = "Copyright (C) 2018-2023 Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/frasertweedale/hs-tax-ato";
      url = "";
      synopsis = "Tax types and computations for Australia";
      description = "This library provides types and tax computations for tax\nin Australia (ATO = /Australian Taxation Office/).  It is\nbased on the <https://hackage.haskell.org/package/tax tax>\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tax" or (errorHandler.buildDepError "tax"))
        ];
        buildable = true;
      };
    };
  }