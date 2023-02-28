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
      specVersion = "3.0";
      identifier = { name = "eventuo11y-prometheus"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2023 Shea Levy.";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "";
      url = "";
      synopsis = "Prometheus backend for eventuo11y";
      description = "Render [eventuo11y](https://hackage.haskell.org/package/eventuo11y) 'Observe.Event.Event's\nto Prometheus metrics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."eventuo11y" or (errorHandler.buildDepError "eventuo11y"))
          (hsPkgs."prometheus" or (errorHandler.buildDepError "prometheus"))
          ];
        buildable = true;
        };
      };
    }