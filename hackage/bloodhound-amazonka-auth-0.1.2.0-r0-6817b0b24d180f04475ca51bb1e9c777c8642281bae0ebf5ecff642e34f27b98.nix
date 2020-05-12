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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bloodhound-amazonka-auth"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/MichaelXavier/bloodhound-amazonka-auth#readme";
      url = "";
      synopsis = "Adds convenient Amazon ElasticSearch Service authentication to Bloodhound.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bloodhound" or (errorHandler.buildDepError "bloodhound"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-elasticsearch" or (errorHandler.buildDepError "amazonka-elasticsearch"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloodhound-amazonka-auth" or (errorHandler.buildDepError "bloodhound-amazonka-auth"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bloodhound" or (errorHandler.buildDepError "bloodhound"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            ];
          buildable = true;
          };
        };
      };
    }