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
      specVersion = "2.2";
      identifier = { name = "amazonka"; version = "2.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2013-2023 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+amazonka@gmail.com>, Jack Kelly <jack@jackkelly.name>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Comprehensive Amazon Web Services SDK.";
      description = "This client library contains request and response logic to communicate\nwith Amazon Web Service compatible APIs using the types supplied by the\nvarious @amazonka-*@ service libraries. See the <http://hackage.haskell.org/packages/#cat:AWS AWS>\ncategory on Hackage for supported services.\n\nTo get started, import \"Amazonka\" and the desired @amazonka-*@ library (such as\n<http://hackage.haskell.org/package/amazonka-ml/docs/Network-AWS-MachineLearning.html Amazonka.MachineLearning>)\n\nGHC 8.10.7 and higher is officially supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-sso" or (errorHandler.buildDepError "amazonka-sso"))
          (hsPkgs."amazonka-sts" or (errorHandler.buildDepError "amazonka-sts"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }