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
        version = "1.1.3";
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
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      exes = {
        "iso8601-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "iso8601plus-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "rfc822-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "route-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "route-handler-with-iso8601" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }