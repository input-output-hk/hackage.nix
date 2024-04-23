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
    flags = { dev = false; util = true; yaml = true; regex = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ert"; version = "0.0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "kayo@illumium.org";
      author = "K.";
      homepage = "";
      url = "";
      synopsis = "Easy Runtime Templates";
      description = "EJS-like template engine for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-expr" or (errorHandler.buildDepError "attoparsec-expr"))
        ] ++ pkgs.lib.optional (flags.regex) (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"));
        buildable = true;
      };
      exes = {
        "ert" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ert" or (errorHandler.buildDepError "ert"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-expr" or (errorHandler.buildDepError "attoparsec-expr"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ] ++ pkgs.lib.optional (flags.regex) (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))) ++ pkgs.lib.optional (flags.yaml) (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"));
          buildable = true;
        };
      };
    };
  }