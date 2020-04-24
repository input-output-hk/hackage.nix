{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "reactive-banana-wx"; version = "0.4.3.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cabal-macosx" or ((hsPkgs.pkgs-errors).buildDepError "cabal-macosx"))
          (hsPkgs."reactive-banana" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          ];
        buildable = true;
        };
      exes = {
        "Arithmetic" = { buildable = true; };
        "Asteroids" = {
          depends = [
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "Counter" = { buildable = true; };
        "CurrencyConverter" = { buildable = true; };
        "CRUD" = {
          depends = [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        "NetMonitor" = {
          depends = [
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "TicTacToe" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        "TwoCounters" = { buildable = true; };
        "Wave" = { buildable = true; };
        };
      };
    }