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
    flags = { libmagic = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "marmalade-upload"; version = "0.7"; };
      license = "MIT";
      copyright = "(C) 2014 Sebastian Wiesner";
      maintainer = "lunaryorn@gmail.com";
      author = "Sebastian Wiesner";
      homepage = "https://github.com/lunaryorn/marmalade-upload";
      url = "";
      synopsis = "Upload packages to Marmalade";
      description = "Upload Emacs packages to the <http://marmalade-repo.org/ Marmalade> ELPA\narchive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ];
        buildable = true;
        };
      exes = {
        "marmalade-upload" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."keyring" or (errorHandler.buildDepError "keyring"))
            (hsPkgs."marmalade-upload" or (errorHandler.buildDepError "marmalade-upload"))
            ];
          buildable = true;
          };
        };
      tests = {
        "marmalade" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."marmalade-upload" or (errorHandler.buildDepError "marmalade-upload"))
            ];
          buildable = true;
          };
        };
      };
    }