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
      specVersion = "3.0";
      identifier = { name = "tmp-proc-example"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Tim Emiola";
      maintainer = "adetokunbo@contacts.noreply.github.com";
      author = "Tim Emiola";
      homepage = "";
      url = "";
      synopsis = "Shows how to test a simple service using tmp-proc";
      description = "Provides working examples that use tmp-proc to test a simple postgresql/redis servant-based API service";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-tmp-proc" or (errorHandler.buildDepError "hspec-tmp-proc"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
          (hsPkgs."tmp-proc-postgres" or (errorHandler.buildDepError "tmp-proc-postgres"))
          (hsPkgs."tmp-proc-redis" or (errorHandler.buildDepError "tmp-proc-redis"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-integration-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tmp-proc-example" or (errorHandler.buildDepError "tmp-proc-example"))
            ];
          buildable = true;
          };
        "tasty-integration-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tmp-proc-example" or (errorHandler.buildDepError "tmp-proc-example"))
            ];
          buildable = true;
          };
        };
      };
    }