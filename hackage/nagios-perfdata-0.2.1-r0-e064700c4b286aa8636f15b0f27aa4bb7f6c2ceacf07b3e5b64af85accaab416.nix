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
      identifier = { name = "nagios-perfdata"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Anchor Systems";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/anchor/nagios-perfdata";
      url = "";
      synopsis = "Parse Nagios performance data.";
      description = "Provides an interface for parsing Nagios\nperformance data formatted according to the plugin\ndevelopment guidelines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          ];
        buildable = true;
        };
      tests = {
        "perfdata-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."nagios-perfdata" or (errorHandler.buildDepError "nagios-perfdata"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }