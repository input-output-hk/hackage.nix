{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reactive-banana-wx";
        version = "0.4.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Examples for the reactive-banana library, using wxHaskell.";
      description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing wxHaskell.\n\nNote: You need to install the (platform independent)\n@cabal-macosx@ library before you can configure/build and install this library.\n\nNote: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install reactive-banana-wx -fbuildExamples@\n";
      buildType = "Custom";
    };
    components = {
      "reactive-banana-wx" = {
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
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.random)
            (hsPkgs.executable-path)
            (hsPkgs.filepath)
          ];
        };
        "Counter" = {};
        "CurrencyConverter" = {
          depends  = pkgs.lib.optional (flags.buildexamples) (hsPkgs.process);
        };
        "CRUD" = {
          depends  = pkgs.lib.optional (flags.buildexamples) (hsPkgs.containers);
        };
        "NetMonitor" = {
          depends  = pkgs.lib.optional (flags.buildexamples) (hsPkgs.process);
        };
        "TicTacToe" = {
          depends  = pkgs.lib.optional (flags.buildexamples) (hsPkgs.array);
        };
        "TwoCounters" = {};
        "Wave" = {};
      };
    };
  }