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
      specVersion = "1.6";
      identifier = { name = "attoparsec-arff"; version = "0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Paul Wilson <paul@statusfailed.com>";
      author = "Paul Wilson";
      homepage = "";
      url = "";
      synopsis = "An ARFF file parser using Attoparsec";
      description = "Parse ARFF files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }