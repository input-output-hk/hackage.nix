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
      identifier = { name = "servant-router"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Will Fancher";
      maintainer = "willfancher38@gmail.com";
      author = "Will Fancher";
      homepage = "https://github.com/ElvishJerricco/servant-router";
      url = "";
      synopsis = "Servant router for non-server applications.";
      description = "Write Servant APIs to be routed without a server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "servant-router-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-router" or (errorHandler.buildDepError "servant-router"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "server-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-router" or (errorHandler.buildDepError "servant-router"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            ];
          buildable = true;
          };
        };
      };
    }