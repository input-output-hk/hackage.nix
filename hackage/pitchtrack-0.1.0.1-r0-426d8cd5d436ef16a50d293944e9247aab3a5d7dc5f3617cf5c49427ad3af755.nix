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
      identifier = { name = "pitchtrack"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2015 Lorenzo Tabacchini";
      maintainer = "lortabac@gmx.com";
      author = "Lorenzo Tabacchini";
      homepage = "";
      url = "";
      synopsis = "Pitch tracking library";
      description = "Pitch tracking library, based on <http://www.schmittmachine.com/dywapitchtrack.html dywapitchtrack>.\n\nSee the \"PitchTrack.Track\" module for an easy, \"ready to use\" interface,\nor \"PitchTrack.Pipes\" for Pipes-based components, if you need more flexibility.\n\nNote that because all parameters are hard-coded into the C library,\nyou are limited to the following audio configuration:\n\n* raw (headerless) format\n\n* a sampling rate of 44100Hz,\n\n* a sample size of @sizeof(double)@\n\n* floating-point encoding\n\n* one channel (mono)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dywapitchtrack" or (errorHandler.buildDepError "dywapitchtrack"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dywapitchtrack" or (errorHandler.buildDepError "dywapitchtrack"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }