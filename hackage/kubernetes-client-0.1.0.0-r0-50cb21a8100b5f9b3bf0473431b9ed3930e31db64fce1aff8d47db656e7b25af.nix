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
      identifier = { name = "kubernetes-client"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Shimin Guo <smguo2001@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Client library for Kubernetes";
      description = "Client library for interacting with a Kubernetes cluster.\n\nThis package contains hand-written code while kubernetes-client-core contains code auto-generated from the OpenAPI spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."kubernetes-client-core" or (errorHandler.buildDepError "kubernetes-client-core"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          (hsPkgs."x509-system" or (errorHandler.buildDepError "x509-system"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."kubernetes-client" or (errorHandler.buildDepError "kubernetes-client"))
            (hsPkgs."kubernetes-client-core" or (errorHandler.buildDepError "kubernetes-client-core"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509-system" or (errorHandler.buildDepError "x509-system"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."kubernetes-client" or (errorHandler.buildDepError "kubernetes-client"))
            (hsPkgs."kubernetes-client-core" or (errorHandler.buildDepError "kubernetes-client-core"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509-system" or (errorHandler.buildDepError "x509-system"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }