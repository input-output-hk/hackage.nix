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
        version = "2.0.0";
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
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "iso8601-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "iso8601plus-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "rfc822-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "route-handler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        "route-handler-with-iso8601" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."logging-effect-extra-handler" or (errorHandler.buildDepError "logging-effect-extra-handler"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            ];
          buildable = true;
          };
        };
      };
    }