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
      identifier = { name = "tmp-proc"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Tim Emiola";
      maintainer = "adetokunbo@users.noreply.github.com";
      author = "Tim Emiola";
      homepage = "";
      url = "";
      synopsis = "Run 'tmp' processes in integration tests";
      description = "@tmp-proc@ runs services in docker containers for use in integration tests.\n\nIt aims to make using these services become like accessing /tmp/ processes,\nsimilar to how /tmp/ file or directories are used.\n\nIt aspires to provide a user-friendly API, while including useful features\nsuch as\n\n* launch of multiple services on docker during test setup\n\n* delayed test execution until the launched services are available\n\n* simplified use of connections to the services from a [WAI](https://hackage.haskell.org/package/wai) server under test\n\n* good integration with haskell testing frameworks like [hspec](https://hspec.github.io)\nand [tasty](https://hackage.haskell.org/package/tasty)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
          ];
        buildable = true;
        };
      tests = {
        "integration-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
            ];
          buildable = true;
          };
        };
      };
    }