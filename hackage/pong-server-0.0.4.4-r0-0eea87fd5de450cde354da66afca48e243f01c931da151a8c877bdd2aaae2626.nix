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
      identifier = { name = "pong-server"; version = "0.0.4.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017 Robert Fischer";
      maintainer = "smokejumperit+pong-server@gmail.com";
      author = "Robert Fischer";
      homepage = "http://github.com/RobertFischer/pong-server#readme";
      url = "";
      synopsis = "A simple embedded pingable server that runs in the background.";
      description = "A useful Haskell library for running a pingable server within another application, which is useful for health checks and the like. This library runs a background server that listens on a port, and when a connection comes in, it writes \"pong\" and closes the connection. Details in the README on GitHub.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          ];
        buildable = true;
        };
      tests = {
        "pong-server-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pong-server" or (errorHandler.buildDepError "pong-server"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }