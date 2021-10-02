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
      newtypewrappers = false;
      threaded = true;
      unboxedarrays = false;
      unix = true;
      };
    package = {
      specVersion = "2.4";
      identifier = { name = "bishbosh"; version = "0.1.1.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) 2018 Dr. Alistair Ward";
      maintainer = "mailto:bishbosh@functionalley.com";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.com/BishBosh/bishbosh.html";
      url = "";
      synopsis = "Plays chess.";
      description = "A chess-game which can be rendered in a terminal (emulator) in raw ASCII, or used as an engine by xboard.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
          ] ++ (if flags.polyparse
          then [
            (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
            ]
          else [
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ])) ++ (pkgs.lib).optional (flags.threaded) (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"));
        buildable = true;
        };
      exes = {
        "bishbosh" = {
          depends = ([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bishbosh" or (errorHandler.buildDepError "bishbosh"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            ] ++ (pkgs.lib).optional (flags.hxtrelaxng) (hsPkgs."hxt-relaxng" or (errorHandler.buildDepError "hxt-relaxng"))) ++ (pkgs.lib).optional (flags.unix) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        "duel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bishbosh" or (errorHandler.buildDepError "bishbosh"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hunit-tests" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bishbosh" or (errorHandler.buildDepError "bishbosh"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
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
        "quickcheck-tests" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bishbosh" or (errorHandler.buildDepError "bishbosh"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
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