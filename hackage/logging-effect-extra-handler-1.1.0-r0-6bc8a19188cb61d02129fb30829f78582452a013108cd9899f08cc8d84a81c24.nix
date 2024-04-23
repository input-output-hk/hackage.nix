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
      identifier = {
        name = "logging-effect-extra-handler";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/logging-effect-extra#readme";
      url = "";
      synopsis = "Handy logging handler combinators";
      description = "Handy logging handler combinators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "iso8601-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
          ];
          buildable = true;
        };
        "iso8601plus-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
          ];
          buildable = true;
        };
        "rfc822-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
          ];
          buildable = true;
        };
        "route-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
          ];
          buildable = true;
        };
        "route-handler-with-iso8601" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
          ];
          buildable = true;
        };
      };
    };
  }