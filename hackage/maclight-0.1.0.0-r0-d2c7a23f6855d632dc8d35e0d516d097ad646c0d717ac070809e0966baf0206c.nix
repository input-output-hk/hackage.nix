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
      identifier = { name = "maclight"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tycho Andersen <tycho@tycho.ws>";
      author = "Tycho Andersen";
      homepage = "http://github.com/tych0/maclight";
      url = "";
      synopsis = "Control screen and keyboard backlights on MACs under Linux";
      description = "Maclight is both a library and a command line program for\ncontrolling the backlight on Macbooks under linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          ];
        buildable = true;
        };
      exes = {
        "maclight" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."maclight" or (errorHandler.buildDepError "maclight"))
            ];
          buildable = true;
          };
        };
      tests = {
        "MaclightTest.hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."maclight" or (errorHandler.buildDepError "maclight"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }