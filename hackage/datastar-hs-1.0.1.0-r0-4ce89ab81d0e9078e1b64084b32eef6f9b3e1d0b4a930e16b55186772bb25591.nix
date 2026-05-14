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
      identifier = { name = "datastar-hs"; version = "1.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "carlo@carlo-hamalainen.net";
      author = "Carlo Hamalainen";
      homepage = "https://github.com/starfederation/datastar-haskell";
      url = "";
      synopsis = "Haskell bindings for Datastar";
      description = "Server-side SDK for building real-time hypermedia applications with\n<https://data-star.dev/ Datastar>. Stream HTML fragments, reactive\nsignal updates, and scripts to the browser over server-sent events\n(SSE). Built on WAI so it works with Warp, Scotty, Servant, Yesod,\nand any other WAI-compatible framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
      sublibs = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."datastar-hs" or (errorHandler.buildDepError "datastar-hs"))
            (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
      exes = {
        "e2e-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."datastar-hs" or (errorHandler.buildDepError "datastar-hs"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
          buildable = true;
        };
        "hello-world-warp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."datastar-hs".components.sublibs.examples or (errorHandler.buildDepError "datastar-hs:examples"))
          ];
          buildable = true;
        };
        "hello-world-servant" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."datastar-hs".components.sublibs.examples or (errorHandler.buildDepError "datastar-hs:examples"))
          ];
          buildable = true;
        };
        "hello-world-channel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."datastar-hs".components.sublibs.examples or (errorHandler.buildDepError "datastar-hs:examples"))
          ];
          buildable = true;
        };
        "activity-feed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."datastar-hs".components.sublibs.examples or (errorHandler.buildDepError "datastar-hs:examples"))
          ];
          buildable = true;
        };
        "heap-view" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."datastar-hs".components.sublibs.examples or (errorHandler.buildDepError "datastar-hs:examples"))
          ];
          buildable = true;
        };
      };
      tests = {
        "datastar-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."datastar-hs" or (errorHandler.buildDepError "datastar-hs"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
          buildable = true;
        };
      };
    };
  }