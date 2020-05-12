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
      identifier = { name = "streamdeck"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tina@wuest.me";
      author = "Tina Wuest";
      homepage = "https://github.com/wuest/haskell-streamdeck";
      url = "";
      synopsis = "Control library for the Elgato Stream Deck";
      description = "Support (via System.HIDAPI) for Elgato Stream Deck hardware";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }