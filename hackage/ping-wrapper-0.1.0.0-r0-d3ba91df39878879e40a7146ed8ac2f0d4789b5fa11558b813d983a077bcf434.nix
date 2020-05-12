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
      identifier = { name = "ping-wrapper"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2017, Fernando Rincon Martin";
      maintainer = "frm.rincon@gmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/frincon/ping-wrapper";
      url = "";
      synopsis = "Haskell Ping wrapper";
      description = "This utility is a wrapper for ping. Currently it is only implemented the\nwin32 and it will raise an exception in other systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ping-parser-attoparsec" or (errorHandler.buildDepError "ping-parser-attoparsec"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ];
        buildable = true;
        };
      exes = {
        "ping-wrapper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ping-wrapper" or (errorHandler.buildDepError "ping-wrapper"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ping-wrapper-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ping-wrapper" or (errorHandler.buildDepError "ping-wrapper"))
            ];
          buildable = true;
          };
        };
      };
    }