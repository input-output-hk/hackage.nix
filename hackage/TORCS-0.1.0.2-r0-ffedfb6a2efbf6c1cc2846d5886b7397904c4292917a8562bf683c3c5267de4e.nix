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
      identifier = { name = "TORCS"; version = "0.1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mark.santolucito@yale.edu";
      author = "Mark Santolucito";
      homepage = "";
      url = "";
      synopsis = "Bindings to the TORCS vehicle simulator.";
      description = "A library for building autonomous vehicles that run in the TORCS simulator. This requires the following external dependencies:\n\n1. torcs 1.3.4 (<http://prdownloads.sourceforge.net/torcs/torcs-1.3.4.tar.bz2?download>)\n2. scr-server 2.1 (<https://sourceforge.net/projects/cig/files/SCR%20Championship/Server%20Linux/>)\n\nNot that scr-server will only work with 1.3.4, until that is updated you must use exactly torcs 1.3.4.\nComplete install instructions here <https://arxiv.org/abs/1304.1672>\n\nOn Ubunutu 16.04, you may need to comment out line 70 in @src\\/modules\\/simu\\/simuv2\\/simu.cpp@ in order for TORCS to compile.\n\nA guide script for install is available at <https://github.com/santolucito/Haskell-TORCS/blob/master/installTORCS.sh>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "Simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."TORCS" or (errorHandler.buildDepError "TORCS"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }