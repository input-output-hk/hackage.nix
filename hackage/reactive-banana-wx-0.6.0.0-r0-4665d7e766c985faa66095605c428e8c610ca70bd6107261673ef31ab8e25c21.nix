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
      identifier = { name = "reactive-banana-wx"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Examples for the reactive-banana library, using wxHaskell.";
      description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.\n\nNote: You need to install the (platform independent)\n@cabal-macosx@ library before you can configure/build and install this library.\n\nNote: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install reactive-banana-wx -fbuildExamples@\n\nIMPORTANT NOTE:\nThere are a few issues with WxWidgets 2.9.3 and some examples may crash.\nThese problems are only solved in wx-0.90.0.1 and higher.\n\nStability forecast: The wrapper functions are rather provisional.";
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
          buildable = if !flags.buildexamples then false else true;
        };
        "Arithmetic" = {
          buildable = if !flags.buildexamples then false else true;
        };
        "Asteroids" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "Counter" = {
          buildable = if !flags.buildexamples then false else true;
        };
        "CurrencyConverter" = {
          depends = pkgs.lib.optional (flags.buildexamples) (hsPkgs."process" or (errorHandler.buildDepError "process"));
          buildable = if flags.buildexamples then true else false;
        };
        "CRUD" = {
          depends = pkgs.lib.optional (flags.buildexamples) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
          buildable = if flags.buildexamples then true else false;
        };
        "NetMonitor" = {
          depends = pkgs.lib.optional (flags.buildexamples) (hsPkgs."process" or (errorHandler.buildDepError "process"));
          buildable = if flags.buildexamples then true else false;
        };
        "TicTacToe" = {
          depends = pkgs.lib.optional (flags.buildexamples) (hsPkgs."array" or (errorHandler.buildDepError "array"));
          buildable = if flags.buildexamples then true else false;
        };
        "TwoCounters" = {
          buildable = if !flags.buildexamples then false else true;
        };
        "Wave" = { buildable = if !flags.buildexamples then false else true; };
      };
    };
  }