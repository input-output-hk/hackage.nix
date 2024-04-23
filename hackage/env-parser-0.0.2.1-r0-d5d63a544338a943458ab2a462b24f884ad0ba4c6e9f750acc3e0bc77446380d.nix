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
      identifier = { name = "env-parser"; version = "0.0.2.1"; };
      license = "MIT";
      copyright = "2013 (c) Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "http://github.com/tel/env-parser";
      url = "";
      synopsis = "Pull configuration information from the ENV";
      description = "@env-parser is a small library for configuring programs based on information\nfrom the environment. It's goals and design are similar to that of @cmdargs@\nor @optparse-applicative@ but aimed at automatically managed programs such as\nthose that might be run via Heroku or Runit/daemontools.\n\n@env-parser@ intentionally sacrifices power for comprehensibility---the\nprimary interface, @Parser@, implements only @Applicative@. This provides\nbetter runtime error messages and automatically generated static help using\nparser annotations. It also expresses a principle of simplicity in\nconfiguration: arbitrary uses of @Monad@ or even @Alternative@ can lead to\nopaque failures prior to a program even beginning to run.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
    };
  }