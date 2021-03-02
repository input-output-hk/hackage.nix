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
      specVersion = "1.0";
      identifier = { name = "net-concurrent"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "BSD";
      maintainer = "Paul Sonkoly";
      author = "Paul Sonkoly";
      homepage = "http://phaul.hobby-site.org/node/4123";
      url = "http://phaul.hobby-site.org/repository/4123/downloads";
      synopsis = "Concurrent over the network execution library";
      description = "net-concurrent is a simple haskell library for doing parallel\ncomputation on several computers using the network. There is a\nsingle master process and many slave processes. Communication\nis between the master and the slaves, for simplicity slaves\nnever communicate with each other.\nCommunication is done using NVars, network variables.\nThe NVar api is very similar to MVar. These are stored in the\nmaster process and shared between all processes in the system.\nSlave nodes can read and write these NVar variables which results\nin network transactions with the master.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-binary" or (errorHandler.buildDepError "ghc-binary"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }