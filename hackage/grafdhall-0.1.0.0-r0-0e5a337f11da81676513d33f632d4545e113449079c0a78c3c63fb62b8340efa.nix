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
      specVersion = "2.4";
      identifier = { name = "grafdhall"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 Red Hat";
      maintainer = "Tristan de Cacqueray <tdecacqu@redhat.com>";
      author = "Tristan de Cacqueray";
      homepage = "https://github.com/softwarefactory-project/grafdhall#readme";
      url = "";
      synopsis = "Configure grafana dashboards from Dhall expression";
      description = "grafdhall takes Grafana dashboards in Dhall format, and submits them to a grafana service.\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "grafdhall" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."dhall-json" or (errorHandler.buildDepError "dhall-json"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }