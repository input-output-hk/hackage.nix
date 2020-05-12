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
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-simplelocalnet";
        version = "0.2.0";
        };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, dcoutts@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Simple zero-configuration backend for Cloud Haskell ";
      description = "Simple backend based on the TCP transport which offers node\ndiscovery based on UDP multicast. This is a zero-configuration\nbackend designed to get you going with Cloud Haskell quickly\nwithout imposing any structure on your application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-multicast" or (errorHandler.buildDepError "network-multicast"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          ];
        buildable = true;
        };
      tests = {
        "TestSimpleLocalnet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-multicast" or (errorHandler.buildDepError "network-multicast"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            ];
          buildable = true;
          };
        };
      };
    }