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
      identifier = { name = "simple-postgresql-orm"; version = "0.7.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Aryeh Levy";
      homepage = "http://simple.cx";
      url = "";
      synopsis = "Connector package for integrating postgresql-orm with the Simple web framework";
      description = "Connector package for integrating postgresql-orm with the Simple web framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."postgresql-orm" or (errorHandler.buildDepError "postgresql-orm"))
          (hsPkgs."simple" or (errorHandler.buildDepError "simple"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }