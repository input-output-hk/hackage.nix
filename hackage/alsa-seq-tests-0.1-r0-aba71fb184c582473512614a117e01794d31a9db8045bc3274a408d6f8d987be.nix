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
      specVersion = "1.2";
      identifier = { name = "alsa-seq-tests"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "Tests for the ALSA sequencer library.";
      description = "Tests for the ALSA sequencer library.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "test1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alsa" or (errorHandler.buildDepError "alsa"))
            ];
          buildable = true;
          };
        "test2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alsa" or (errorHandler.buildDepError "alsa"))
            ];
          buildable = true;
          };
        "test3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alsa" or (errorHandler.buildDepError "alsa"))
            ];
          buildable = true;
          };
        "test4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alsa" or (errorHandler.buildDepError "alsa"))
            ];
          buildable = true;
          };
        "test5" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alsa" or (errorHandler.buildDepError "alsa"))
            ];
          buildable = true;
          };
        };
      };
    }