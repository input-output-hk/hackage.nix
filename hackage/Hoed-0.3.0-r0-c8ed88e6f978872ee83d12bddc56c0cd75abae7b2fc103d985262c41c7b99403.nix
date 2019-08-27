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
    flags = {
      buildexamples = false;
      validatepure = false;
      validatestk = false;
      validategeneric = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "Hoed"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2015 Maarten Faddegon";
      maintainer = "hoed@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "http://maartenfaddegon.nl";
      url = "";
      synopsis = "Lighweight algorithmic debugging.";
      description = "Hoed is a tracer and debugger for the programming language Haskell. You can trace a program by annotating functions in suspected modules and linking your program against standard profiling libraries.\n\nTo locate a defect with Hoed you annotate suspected functions and compile as usual. Then you run your program, information about the annotated functions is collected. Finally you connect to a debugging session using a webbrowser.\n\nHoed comes in two flavours: Hoed.Pure and Hoed.Stk. Hoed.Pure is recommended over Hoed.Stk: to debug your program with Hoed.Pure you can optimize your program and do not need to enable profiling. Hoed.Stk is Hoed as presented on PLDI 2015 and possibly has benefits over Hoed.Pure for debugging concurrent/parallel programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."libgraph" or (buildDepError "libgraph"))
          (hsPkgs."RBTree" or (buildDepError "RBTree"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        };
      exes = {
        "hoed-examples-Foldl" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-HeadOnEmpty1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-HeadOnEmpty2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-IndirectRecursion" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-Pretty" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "hoed-examples-Example1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-Example3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-Example4" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-Insort1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-Insort2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-DoublingServer1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        "hoed-examples-DoublingServer2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        "hoed-examples-DoublingServer3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        "hoed-examples-DoublingServer4" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        "hoed-examples-DoublingServer5" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        "hoed-examples-Hashmap" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "hoed-examples-Responsibility" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "hoed-examples-TightRope1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-TightRope2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-TightRope3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-examples-AskName" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-tests-Generic-r0" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Generic-t0" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Generic-r1" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Generic-t1" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Generic-r2" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Generic-t2" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Generic-r3" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Generic-t3" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Pure-t1" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Pure-t2" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Pure-t3" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Pure-t4" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          };
        "hoed-tests-Stk-DoublingServer" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        "hoed-tests-Stk-Insort2" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-tests-Stk-Example1" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-tests-Stk-Example3" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-tests-Stk-Example4" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hoed-tests-Stk-IndirectRecursion" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      };
    }