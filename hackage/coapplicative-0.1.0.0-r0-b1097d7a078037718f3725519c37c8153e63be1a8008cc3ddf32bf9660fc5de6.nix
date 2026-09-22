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
      specVersion = "3.4";
      identifier = { name = "coapplicative"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jcarr250@protonmail.com";
      author = "J. Carr";
      homepage = "";
      url = "";
      synopsis = "A dual to applicative: covariant functors which can split";
      description = "Provides covariant oplax monoidal functors. These functors\ncan be \"split\" and support pattern-matching while\nretaining the functorial context.\nDefault instances are provided for CoApplicatives that\nagree with their Comonad instances,\nas well as a wrapper for (usually non-lawful)\ninstances on any Comonad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
        ];
        buildable = true;
      };
      tests = {
        "coapplicative-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."coapplicative" or (errorHandler.buildDepError "coapplicative"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }