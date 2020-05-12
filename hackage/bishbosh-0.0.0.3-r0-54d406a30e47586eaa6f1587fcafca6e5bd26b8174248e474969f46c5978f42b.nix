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
    flags = {
      llvm = false;
      polyparse = true;
      hxtrelaxng = true;
      narrownumbers = false;
      threaded = true;
      unix = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "bishbosh"; version = "0.0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2018 Dr. Alistair Ward";
      maintainer = "mailto:bishbosh@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.eu/BishBosh/bishbosh.html";
      url = "";
      synopsis = "Plays chess.";
      description = "A chess-game which can be rendered in a terminal (emulator) in raw ASCII, or used as an engine by xboard.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
          ] ++ (if flags.polyparse
          then [
            (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
            ]
          else [ (hsPkgs."parsec" or (errorHandler.buildDepError "parsec")) ]);
        buildable = true;
        };
      exes = {
        "bishbosh" = {
          depends = (([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bishbosh" or (errorHandler.buildDepError "bishbosh"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            ] ++ (if flags.polyparse
            then [
              (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
              ]
            else [
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              ])) ++ (pkgs.lib).optional (flags.hxtrelaxng) (hsPkgs."hxt-relaxng" or (errorHandler.buildDepError "hxt-relaxng"))) ++ (pkgs.lib).optional (flags.unix) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bishbosh" or (errorHandler.buildDepError "bishbosh"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            ] ++ (if flags.polyparse
            then [
              (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
              ]
            else [
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              ]);
          buildable = true;
          };
        };
      };
    }