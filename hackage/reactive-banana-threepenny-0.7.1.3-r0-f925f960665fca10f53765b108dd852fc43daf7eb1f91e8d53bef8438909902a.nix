let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
          (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
          ];
        buildable = true;
        };
      exes = {
        "reactiva-banana-threepenny-Animation" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-Arithmetic" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-Asteroids" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-BarTab" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-Counter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-CurrencyConverter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-CRUD" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-NetMonitor" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-TicTacToe" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-TwoCounters" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reactiva-banana-threepenny-Wave" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }