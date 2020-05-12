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
      identifier = { name = "gcodehs"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/hackerspace/gcodehs";
      url = "";
      synopsis = "GCode processor";
      description = "GCode parser, pretty-printer and processing utils";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "gcodehs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."gcodehs" or (errorHandler.buildDepError "gcodehs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
            (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }