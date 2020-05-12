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
      specVersion = "1.2";
      identifier = { name = "translate"; version = "2010.1.24"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Joao F. Ferreira  <joao@joaoff.com>, Jinjing Wang <nfjinjing@gmail.com>";
      homepage = "http://github.com/nfjinjing/translate";
      url = "";
      synopsis = "Haskell binding to Google's AJAX Language API for Translation and Detection";
      description = "Haskell binding to Google's AJAX Language API for Translation and Detection.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }