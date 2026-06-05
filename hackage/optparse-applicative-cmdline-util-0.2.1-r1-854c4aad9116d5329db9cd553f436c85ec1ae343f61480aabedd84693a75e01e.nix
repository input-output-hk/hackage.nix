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
      specVersion = "1.12";
      identifier = {
        name = "optparse-applicative-cmdline-util";
        version = "0.2.1";
      };
      license = "AGPL-3.0-only";
      copyright = "2020–2024  Tony Zorman";
      maintainer = "soliditsallgood@mailbox.org";
      author = "Tony Zorman";
      homepage = "https://github.com/slotThe/optparse-applicative-cmdline-util";
      url = "";
      synopsis = "Utility functions for working with optparse-applicative";
      description = "See README.md <https://gitlab.com/slotThe/optparse-applicative-util/-/blob/master/README.md here>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }