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
      identifier = { name = "pa-run-command"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Possehl Analytics GmbH";
      maintainer = "Philip Patsch <philip.patsch@possehl-analytics.com>";
      author = "";
      homepage = "https://github.com/possehl-analytics/pa-hackage";
      url = "";
      synopsis = "Helper functions for spawning subprocesses";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pa-prelude" or (errorHandler.buildDepError "pa-prelude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
        ];
        buildable = true;
      };
    };
  }