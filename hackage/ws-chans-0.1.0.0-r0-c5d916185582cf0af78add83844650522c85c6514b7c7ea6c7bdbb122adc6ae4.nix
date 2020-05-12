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
      identifier = { name = "ws-chans"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 David Smith";
      maintainer = "david.smith@keemail.me";
      author = "David Smith";
      homepage = "https://github.com/shmish111/ws-chans";
      url = "";
      synopsis = "Unagi chan based websocket client";
      description = "Use Control.Concurrent.Chan.Unagi as an interface to a websocket server";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      tests = {
        "ws-chans-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."ws-chans" or (errorHandler.buildDepError "ws-chans"))
            ];
          buildable = true;
          };
        };
      };
    }