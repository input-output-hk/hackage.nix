{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "reactive-banana-wx"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Examples for the reactive-banana library, using wxHaskell.";
      description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.\n\nNote: You need to install the (platform independent)\n@cabal-macosx@ library before you can configure/build and install this library.\n\nNote: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install reactive-banana-wx -fbuildExamples@\n\nStability forecast: The wrapper functions are rather provisional.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cabal-macosx" or ((hsPkgs.pkgs-errors).buildDepError "cabal-macosx"))
          (hsPkgs."reactive-banana" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          ];
        buildable = true;
        };
      exes = {
        "Arithmetic" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "Asteroids" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "Counter" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "CurrencyConverter" = {
          depends = (pkgs.lib).optional (flags.buildexamples) (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"));
          buildable = if flags.buildexamples then true else false;
          };
        "CRUD" = {
          depends = (pkgs.lib).optional (flags.buildexamples) (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"));
          buildable = if flags.buildexamples then true else false;
          };
        "NetMonitor" = {
          depends = (pkgs.lib).optional (flags.buildexamples) (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"));
          buildable = if flags.buildexamples then true else false;
          };
        "TicTacToe" = {
          depends = (pkgs.lib).optional (flags.buildexamples) (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"));
          buildable = if flags.buildexamples then true else false;
          };
        "TwoCounters" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "Wave" = { buildable = if !flags.buildexamples then false else true; };
        };
      };
    }