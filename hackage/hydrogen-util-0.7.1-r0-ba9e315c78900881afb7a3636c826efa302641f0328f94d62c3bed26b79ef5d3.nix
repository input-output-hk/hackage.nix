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
      specVersion = "1.18";
      identifier = { name = "hydrogen-util"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julfleischer@paypal.com";
      author = "Julian Fleischer";
      homepage = "https://github.com/scravy/hydrogen-util";
      url = "";
      synopsis = "Hydrogen Tools";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hydrogen-prelude" or (errorHandler.buildDepError "hydrogen-prelude"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }