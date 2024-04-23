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
      specVersion = "1.6";
      identifier = { name = "snap-blaze-clay"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Decebal Popa <deck@parfait.ro>";
      author = "Decebal Popa <deck@parfait.ro>";
      homepage = "http://github.com/deckool/snap-blaze-clay";
      url = "";
      synopsis = "blaze-html-clay integration for Snap";
      description = "blaze-html-clay integration for Snap";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
        ];
        buildable = true;
      };
    };
  }