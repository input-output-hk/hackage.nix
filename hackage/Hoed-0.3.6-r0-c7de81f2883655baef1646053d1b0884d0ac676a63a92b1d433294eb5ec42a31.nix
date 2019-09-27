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
      buildpropexamples = false;
      buildexamples = false;
      validatepure = false;
      validatestk = false;
      validategeneric = false;
      validateprop = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "Hoed"; version = "0.3.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2016 Maarten Faddegon";
      maintainer = "hoed@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "https://wiki.haskell.org/Hoed";
      url = "";
      synopsis = "Lightweight algorithmic debugging.";
      description = "Hoed is a tracer and debugger for the programming language Haskell.\n\nTo locate a defect with Hoed you annotate suspected functions and compile as usual. Then you run your program, information about the annotated functions is collected. Finally you connect to a debugging session using a webbrowser.\n\nHoed comes in two flavours: Hoed.Pure and Hoed.Stk. Hoed.Stk uses the cost-centre stacks of the GHC profiling environment to construct the information needed for debugging. Hoed.Pure is recommended over Hoed.Stk: to debug your program with Hoed.Pure you can optimize your program and do not need to enable profiling.\n";
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
          (hsPkgs."FPretty" or (buildDepError "FPretty"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "hoed-examples-Raincat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-image" or (buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-FPretty_indents_too_much" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-FPretty_indents_too_much__CC" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Stern-Brocot" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Queens_v1__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-Queens_v2__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-Queens_v3__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-Queens_v4_defect_in_filter__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-filter__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-Rot13" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Salary" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-ZLang_Defect-1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."indents" or (buildDepError "indents"))
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-ZLang_Defect-2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."indents" or (buildDepError "indents"))
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-ZLang_Defect-3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."indents" or (buildDepError "indents"))
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Nub-defective-sort__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-Insertion_Sort_elements_disappear" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-XMonad_changing_focus_duplicates_windows" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-XMonad_changing_focus_duplicates_windows__test_only" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-XMonad_changing_focus_duplicates_windows__CC" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-XMonad_changing_focus_duplicates_windows__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-SummerSchool_compiler_does_not_terminate" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-SummerSchool_compiler_does_not_terminate__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-CNF_unsound_de_Morgan__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-Digraph_not_data_invariant__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
            ];
          buildable = if flags.buildpropexamples then true else false;
          };
        "hoed-examples-Simple_higher-order_function" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Parity_test" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Expression_simplifier" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Expression_simplifier__with_properties" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-tests-Prop-t0" = {
          depends = (pkgs.lib).optionals (flags.validateprop) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validateprop then true else false;
          };
        "hoed-tests-Prop-t1" = {
          depends = (pkgs.lib).optionals (flags.validateprop) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validateprop then true else false;
          };
        "hoed-tests-Prop-t2" = {
          depends = (pkgs.lib).optionals (flags.validateprop) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
            ];
          buildable = if flags.validateprop then true else false;
          };
        "hoed-tests-Prop-t3" = {
          depends = (pkgs.lib).optionals (flags.validateprop) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.validateprop then true else false;
          };
        "hoed-tests-Prop-t4" = {
          depends = (pkgs.lib).optionals (flags.validateprop) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = if flags.validateprop then true else false;
          };
        "hoed-tests-Prop-t5" = {
          depends = (pkgs.lib).optionals (flags.validateprop) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if flags.validateprop then true else false;
          };
        "hoed-tests-ParEq" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
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
            (hsPkgs."FPretty" or (buildDepError "FPretty"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-r0" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-t0" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-r1" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-t1" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-r2" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-t2" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-r3" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Generic-t3" = {
          depends = (pkgs.lib).optionals (flags.validategeneric) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validategeneric then true else false;
          };
        "hoed-tests-Pure-t1" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validatepure then true else false;
          };
        "hoed-tests-Pure-t2" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validatepure then true else false;
          };
        "hoed-tests-Pure-t3" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validatepure then true else false;
          };
        "hoed-tests-Pure-t4" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validatepure then true else false;
          };
        "hoed-tests-Pure-t5" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validatepure then true else false;
          };
        "hoed-tests-Pure-t6" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validatepure then true else false;
          };
        "hoed-tests-Pure-t7" = {
          depends = (pkgs.lib).optionals (flags.validatepure) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            ];
          buildable = if flags.validatepure then true else false;
          };
        "hoed-tests-Stk-DoublingServer" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = if flags.validatestk then true else false;
          };
        "hoed-tests-Stk-Insort2" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validatestk then true else false;
          };
        "hoed-tests-Stk-Example1" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validatestk then true else false;
          };
        "hoed-tests-Stk-Example3" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validatestk then true else false;
          };
        "hoed-tests-Stk-Example4" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validatestk then true else false;
          };
        "hoed-tests-Stk-IndirectRecursion" = {
          depends = (pkgs.lib).optionals (flags.validatestk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validatestk then true else false;
          };
        };
      };
    }