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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "reactive-banana-wx"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://wiki.haskell.org/Reactive-banana";
      url = "";
      synopsis = "Examples for the reactive-banana library, using wxHaskell.";
      description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.\n\nNote: You need to install the (platform independent)\n@cabal-macosx@ library before you can configure/build and install this library.\n\nNote: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install reactive-banana-wx -fbuildExamples@\n\n/Stability forecast/ The wrapper functions are rather provisional.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cabal-macosx" or (errorHandler.buildDepError "cabal-macosx"))
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          ];
        buildable = true;
        };
      exes = {
        "Animation" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "Arithmetic" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "Asteroids" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "BarTab" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "Counter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "CurrencyConverter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "CRUD" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "NetMonitor" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "TicTacToe" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "TwoCounters" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "Wave" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }