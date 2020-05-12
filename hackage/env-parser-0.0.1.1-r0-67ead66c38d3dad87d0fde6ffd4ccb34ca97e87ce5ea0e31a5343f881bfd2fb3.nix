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
      identifier = { name = "env-parser"; version = "0.0.1.1"; };
      license = "MIT";
      copyright = "2013 (c) Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "http://github.com/tel/env-parser";
      url = "";
      synopsis = "Pull configuration information from the ENV";
      description = "@env-parser@ is a small library for configuring programs based on information\nfrom the environment.\n\nCommand-line oriented programs tend to pull much of their runtime\nconfiguration from command-line arguments and libraries such as @cmdargs@ are\nuseful for encoding this configuration in your program. For programs which\ndraw configuration from the environment, however, this must usually be done\nmanually.\n\n@env-parser@ focuses on making ENV-configured programs both easy to build,\ndeclarative, self-documenting, and easy to test.\n\nA particular use case of this parser is to make it easy to build applications\nwhich launch under Heroku-style infrastructure. We provide explicit parsers\nfor some of Heroku's conventions for this purpose.";
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