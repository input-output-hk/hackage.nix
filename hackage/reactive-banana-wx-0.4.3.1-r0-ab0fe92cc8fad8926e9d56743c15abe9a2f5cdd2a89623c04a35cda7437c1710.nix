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
      specVersion = "1.6";
      identifier = { name = "reactive-banana-wx"; version = "0.4.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Examples for the reactive-banana library, using wxHaskell.";
      description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.\n\nNote: You need to install the (platform independent)\n@cabal-macosx@ library before you can configure/build and install this library.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cabal-macosx" or (errorHandler.buildDepError "cabal-macosx"))
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          ];
        buildable = true;
        };
      exes = {
        "Arithmetic" = { buildable = true; };
        "Asteroids" = {
          depends = [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "Counter" = { buildable = true; };
        "CurrencyConverter" = { buildable = true; };
        "CRUD" = {
          depends = [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "NetMonitor" = {
          depends = [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "TicTacToe" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "TwoCounters" = { buildable = true; };
        "Wave" = { buildable = true; };
        };
      };
    }