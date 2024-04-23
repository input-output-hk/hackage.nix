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
      identifier = { name = "network-transport-inmemory"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP, Tweag I/O Limited";
      maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries, Alexander Vershilov";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "In-memory instantiation of Network.Transport";
      description = "This is a transport implementation that could be used for local\ncommunication in the same address space (i.e. one process).\n\nIt could be used either for testing purposes or for local\ncommunication that require the network-transport semantics.\n\nNB: network-tranpsport-inmemory does not support cross-transport\ncommunication. All endpoints that want to comminicate should be\ncreated using the same transport.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "TestMulticastInMemory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tests" or (errorHandler.buildDepError "network-transport-tests"))
          ];
          buildable = false;
        };
        "TestInMemory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."network-transport-tests" or (errorHandler.buildDepError "network-transport-tests"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          ];
          buildable = true;
        };
      };
    };
  }