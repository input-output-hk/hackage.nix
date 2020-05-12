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
      specVersion = "1.12";
      identifier = { name = "api-rpc-pegnet"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019 Sergey Bushnyak";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Sergey Bushnyak";
      homepage = "https://github.com/sigrlami/api-rpc-pegnet#readme";
      url = "";
      synopsis = "simple json-rpc client for PegNet";
      description = "simple json-rpc client for PegNet integration";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."remote-json" or (errorHandler.buildDepError "remote-json"))
          (hsPkgs."remote-json-client" or (errorHandler.buildDepError "remote-json-client"))
          (hsPkgs."remote-monad" or (errorHandler.buildDepError "remote-monad"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "factom-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
            (hsPkgs."api-rpc-pegnet" or (errorHandler.buildDepError "api-rpc-pegnet"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."json-alt" or (errorHandler.buildDepError "json-alt"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."remote-json" or (errorHandler.buildDepError "remote-json"))
            (hsPkgs."remote-json-client" or (errorHandler.buildDepError "remote-json-client"))
            (hsPkgs."remote-monad" or (errorHandler.buildDepError "remote-monad"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }