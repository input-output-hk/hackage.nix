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
    flags = { build-sample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wss-client"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/iij-ii/direct-hs/tree/master/wss-client";
      url = "";
      synopsis = "A-little-higher-level WebSocket client.";
      description = "A-little-higher-level WebSocket client. Based on http-client and http-client-tls.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      exes = {
        "wss-client-sample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wss-client" or (errorHandler.buildDepError "wss-client"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.build-sample then true else false;
          };
        };
      tests = {
        "wss-client-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wss-client" or (errorHandler.buildDepError "wss-client"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."skews" or (errorHandler.buildDepError "skews"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }