{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reactive-banana-wx";
        version = "0.4.3.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cabal-macosx)
          (hsPkgs.reactive-banana)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
        ];
      };
      exes = {
        "Arithmetic" = {};
        "Asteroids" = {
          depends  = [
            (hsPkgs.random)
            (hsPkgs.executable-path)
            (hsPkgs.filepath)
          ];
        };
        "Counter" = {};
        "CurrencyConverter" = {};
        "CRUD" = {
          depends  = [
            (hsPkgs.containers)
          ];
        };
        "NetMonitor" = {
          depends  = [ (hsPkgs.process) ];
        };
        "TicTacToe" = {
          depends  = [ (hsPkgs.array) ];
        };
        "TwoCounters" = {};
        "Wave" = {};
      };
    };
  }