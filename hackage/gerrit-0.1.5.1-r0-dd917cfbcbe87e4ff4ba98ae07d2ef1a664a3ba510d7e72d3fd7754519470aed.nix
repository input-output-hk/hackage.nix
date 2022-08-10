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
      identifier = { name = "gerrit"; version = "0.1.5.1"; };
      license = "Apache-2.0";
      copyright = "2020 Red Hat";
      maintainer = "tdecacqu@redhat.com";
      author = "Tristan de Cacqueray";
      homepage = "https://github.com/softwarefactory-project/gerrit-haskell#readme";
      url = "";
      synopsis = "A gerrit client library";
      description = "Gerrit is a client library to interface with https://www.gerritcodereview.com/\n\nUse this library to query and post to gerrit REST API.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-openssl" or (errorHandler.buildDepError "http-client-openssl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
          ];
        buildable = true;
        };
      tests = {
        "gerrit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."gerrit" or (errorHandler.buildDepError "gerrit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }