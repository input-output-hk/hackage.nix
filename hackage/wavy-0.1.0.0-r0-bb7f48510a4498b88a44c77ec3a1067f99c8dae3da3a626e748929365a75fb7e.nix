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
      specVersion = "1.8";
      identifier = { name = "wavy"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Robert Massaioli <robertmassaioli@gmail.com>";
      maintainer = "Robert Massaioli <robertmassaioli@gmail.com>";
      author = "Robert Massaioli <robertmassaioli@gmail.com>";
      homepage = "http://bitbucket.org/robertmassaioli/wavy";
      url = "";
      synopsis = "Process WAVE files in Haskell.";
      description = "Wavy was designed to be a fast and efficient method of extracting and writing PCM\ndata to and from WAV files. It is here to help you make fast use of Audio\ndata in your Haskell programs and thus encourage many more audio projects in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."riff" or (errorHandler.buildDepError "riff"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "wave-identity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."wavy" or (errorHandler.buildDepError "wavy"))
          ];
          buildable = true;
        };
        "wave-info" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."wavy" or (errorHandler.buildDepError "wavy"))
          ];
          buildable = true;
        };
        "wave-split" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wavy" or (errorHandler.buildDepError "wavy"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "wave-generate-sine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wavy" or (errorHandler.buildDepError "wavy"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }