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
      identifier = { name = "nagios-plugin-ekg"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2015 Sharif Olorin and Anchor Systems";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/fractalcat/nagios-plugin-ekg";
      url = "";
      synopsis = "Monitor ekg metrics via Nagios";
      description = "A generic Nagios plugin which retrieves metrics\nfrom an application which uses\n<http://hackage.haskell.org/package/ekg ekg>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nagios-check" or (errorHandler.buildDepError "nagios-check"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "check_ekg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nagios-check" or (errorHandler.buildDepError "nagios-check"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."nagios-plugin-ekg" or (errorHandler.buildDepError "nagios-plugin-ekg"))
          ];
          buildable = true;
        };
      };
      tests = {
        "sample-data" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."nagios-check" or (errorHandler.buildDepError "nagios-check"))
            (hsPkgs."nagios-plugin-ekg" or (errorHandler.buildDepError "nagios-plugin-ekg"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }