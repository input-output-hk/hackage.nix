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
    flags = { developer = false; old-time = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fudgets"; version = "0.18.3.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Thomas Hallgren";
      author = "Thomas Hallgren and Magnus Carlsson and others";
      homepage = "https://www.altocumulus.org/Fudgets/";
      url = "";
      synopsis = "The Fudgets Library";
      description = "<https://www.altocumulus.org/Fudgets/ Fudgets> is a Graphical\nUser Interface Toolkit built in Haskell on top of the X11\nWindows system in the early 1990s. There is an\n<https://www.altocumulus.org/Fudgets/fpca93-abstract.html FPCA-93 paper>\nabout it. Fudgets also makes it easy to create\nclient/server applications that communicate via the Internet.\n\nThis package includes the Fudgets library and a few small\nexamples and demo applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ] ++ pkgs.lib.optional (flags.old-time) (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"));
        libs = [
          (pkgs."X11" or (errorHandler.sysDepError "X11"))
          (pkgs."Xext" or (errorHandler.sysDepError "Xext"))
        ];
        buildable = true;
      };
      exes = {
        "Graph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
        "fudgetclock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ] ++ (if flags.old-time
            then [
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ]
            else [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]);
          buildable = true;
        };
        "StopWatch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
        "texteditor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
        "FancyHello" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
        "SpaceInvaders2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "Explore" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
          buildable = true;
        };
        "FudPaint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
        "Life" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
        "Tiles" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
        "XMine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "doRequest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fudgets" or (errorHandler.buildDepError "fudgets"))
          ];
          buildable = true;
        };
      };
    };
  }