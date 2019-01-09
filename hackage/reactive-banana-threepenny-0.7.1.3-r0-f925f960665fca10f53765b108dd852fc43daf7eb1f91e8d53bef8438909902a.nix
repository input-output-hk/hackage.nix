{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "reactive-banana-threepenny";
        version = "0.7.1.3";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Examples for the reactive-banana library, using threepenny-gui.";
      description = "This library provides some GUI examples for the @reactive-banana@ library,\nusing @threepenny-gui@.\n\n\nNote: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install reactive-banana-threepenny -fbuildExamples@\n\nStability forecast: The wrapper functions are rather provisional.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.reactive-banana)
          (hsPkgs.threepenny-gui)
          ];
        };
      exes = {
        "reactiva-banana-threepenny-Animation" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            ];
          };
        "reactiva-banana-threepenny-Arithmetic" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            ];
          };
        "reactiva-banana-threepenny-Asteroids" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.random)
            (hsPkgs.filepath)
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-BarTab" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-Counter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-CurrencyConverter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-CRUD" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.containers)
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-NetMonitor" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.process)
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-TicTacToe" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.array)
            (hsPkgs.filepath)
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-TwoCounters" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        "reactiva-banana-threepenny-Wave" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.reactive-banana)
            (hsPkgs.threepenny-gui)
            (hsPkgs.base)
            ];
          };
        };
      };
    }