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
      specVersion = "1.2";
      identifier = { name = "DSTM"; version = "0.1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2010, Frank Kupke";
      maintainer = "frk@informatik.uni-kiel.de";
      author = "Frank Kupke";
      homepage = "";
      url = "";
      synopsis = "A framework for using STM within distributed systems";
      description = "The DSTM package consists of the DSTM library, a name server application, and\nthree sample distributed programs using the library. DSTM is a framework\nenabling the use of the STM interface, known from concurrent programming, to be\nused for distributed Haskell applications as well. Provided are a simple Dining\nPhilosophers, a Chat, and a soft real-time Bomberman game application.\n\nDistributed communication is transparent to the application programmer. The\napplication designer uses a very simple nameserver mechanism to set up the\nsystem. The DSTM library includes the management of unavailable process nodes\nand provides the application with abstract error information thus facilitating\nthe implementation of robust distributed application programs.\n\nFor usage please look into the included file: DSTMManual.pdf, also available at\nhttp:\\/\\/www.informatik.uni-kiel.de\\/prog\\/mitarbeiter\\/frank-kupke\\/.\n\nChanges from last version:\n\n* documentation available online\n\n* fixed typos in Chat example\n\n* set debug flags to no debug output";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "NameServer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "Phil" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "ChatClient" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "ChatServer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "Bomberman" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }