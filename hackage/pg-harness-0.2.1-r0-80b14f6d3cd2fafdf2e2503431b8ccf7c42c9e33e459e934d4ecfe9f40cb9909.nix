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
      identifier = { name = "pg-harness"; version = "0.2.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
      maintainer = "bardur@scientician.net";
      author = "Bardur Arantsson";
      homepage = "https://github.com/BardurArantsson/pg-harness";
      url = "";
      synopsis = "REST service and library for creating/consuming temporary PostgreSQL databases";
      description = "__This package has been SUPERCEDED and is OBSOLETE.__\n\nSee <http://hackage.haskell.org/package/pg-harness-server pg-harness-server>\nand <http://hackage.haskell.org/package/pg-harness-client pg-harness-client>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
        buildable = true;
        };
      exes = {
        "pg-harness" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }