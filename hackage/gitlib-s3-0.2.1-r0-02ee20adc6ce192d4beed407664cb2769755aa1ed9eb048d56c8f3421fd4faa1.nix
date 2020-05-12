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
      identifier = { name = "gitlib-s3"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "A repository backend for storing Git objects in Amazon S3";
      description = "A repository backend for storing Git objects in Amazon S3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gitlib" or (errorHandler.buildDepError "gitlib"))
          (hsPkgs."hlibgit2" or (errorHandler.buildDepError "hlibgit2"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."attempt" or (errorHandler.buildDepError "attempt"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          (hsPkgs."stringable" or (errorHandler.buildDepError "stringable"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "smoke" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gitlib-s3" or (errorHandler.buildDepError "gitlib-s3"))
            (hsPkgs."gitlib" or (errorHandler.buildDepError "gitlib"))
            (hsPkgs."hlibgit2" or (errorHandler.buildDepError "hlibgit2"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."stringable" or (errorHandler.buildDepError "stringable"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }