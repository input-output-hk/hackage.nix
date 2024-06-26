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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."libgraph" or (errorHandler.buildDepError "libgraph"))
          (hsPkgs."RBTree" or (errorHandler.buildDepError "RBTree"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."FPretty" or (errorHandler.buildDepError "FPretty"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "hoed-examples-Raincat" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-FPretty_indents_too_much" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-FPretty_indents_too_much__CC" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Stern-Brocot" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Queens_v1__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-Queens_v2__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-Queens_v3__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-Queens_v4_defect_in_filter__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-filter__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-Rot13" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Salary" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-ZLang_Defect-1" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."indents" or (errorHandler.buildDepError "indents"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-ZLang_Defect-2" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."indents" or (errorHandler.buildDepError "indents"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-ZLang_Defect-3" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."indents" or (errorHandler.buildDepError "indents"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Nub-defective-sort__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-Insertion_Sort_elements_disappear" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-XMonad_changing_focus_duplicates_windows" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-XMonad_changing_focus_duplicates_windows__test_only" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-XMonad_changing_focus_duplicates_windows__CC" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-XMonad_changing_focus_duplicates_windows__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-SummerSchool_compiler_does_not_terminate" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-SummerSchool_compiler_does_not_terminate__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-CNF_unsound_de_Morgan__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-Digraph_not_data_invariant__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildpropexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."lazysmallcheck" or (errorHandler.buildDepError "lazysmallcheck"))
          ];
          buildable = if flags.buildpropexamples then true else false;
        };
        "hoed-examples-Simple_higher-order_function" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Parity_test" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Expression_simplifier" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Expression_simplifier__with_properties" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-tests-Prop-t0" = {
          depends = pkgs.lib.optionals (flags.validateprop) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validateprop then true else false;
        };
        "hoed-tests-Prop-t1" = {
          depends = pkgs.lib.optionals (flags.validateprop) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validateprop then true else false;
        };
        "hoed-tests-Prop-t2" = {
          depends = pkgs.lib.optionals (flags.validateprop) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."lazysmallcheck" or (errorHandler.buildDepError "lazysmallcheck"))
          ];
          buildable = if flags.validateprop then true else false;
        };
        "hoed-tests-Prop-t3" = {
          depends = pkgs.lib.optionals (flags.validateprop) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if flags.validateprop then true else false;
        };
        "hoed-tests-Prop-t4" = {
          depends = pkgs.lib.optionals (flags.validateprop) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if flags.validateprop then true else false;
        };
        "hoed-tests-Prop-t5" = {
          depends = pkgs.lib.optionals (flags.validateprop) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if flags.validateprop then true else false;
        };
        "hoed-tests-ParEq" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."libgraph" or (errorHandler.buildDepError "libgraph"))
            (hsPkgs."RBTree" or (errorHandler.buildDepError "RBTree"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."FPretty" or (errorHandler.buildDepError "FPretty"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-r0" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-t0" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-r1" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-t1" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-r2" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-t2" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-r3" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Generic-t3" = {
          depends = pkgs.lib.optionals (flags.validategeneric) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validategeneric then true else false;
        };
        "hoed-tests-Pure-t1" = {
          depends = pkgs.lib.optionals (flags.validatepure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validatepure then true else false;
        };
        "hoed-tests-Pure-t2" = {
          depends = pkgs.lib.optionals (flags.validatepure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validatepure then true else false;
        };
        "hoed-tests-Pure-t3" = {
          depends = pkgs.lib.optionals (flags.validatepure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validatepure then true else false;
        };
        "hoed-tests-Pure-t4" = {
          depends = pkgs.lib.optionals (flags.validatepure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validatepure then true else false;
        };
        "hoed-tests-Pure-t5" = {
          depends = pkgs.lib.optionals (flags.validatepure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validatepure then true else false;
        };
        "hoed-tests-Pure-t6" = {
          depends = pkgs.lib.optionals (flags.validatepure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validatepure then true else false;
        };
        "hoed-tests-Pure-t7" = {
          depends = pkgs.lib.optionals (flags.validatepure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
          ];
          buildable = if flags.validatepure then true else false;
        };
        "hoed-tests-Stk-DoublingServer" = {
          depends = pkgs.lib.optionals (flags.validatestk) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = if flags.validatestk then true else false;
        };
        "hoed-tests-Stk-Insort2" = {
          depends = pkgs.lib.optionals (flags.validatestk) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.validatestk then true else false;
        };
        "hoed-tests-Stk-Example1" = {
          depends = pkgs.lib.optionals (flags.validatestk) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.validatestk then true else false;
        };
        "hoed-tests-Stk-Example3" = {
          depends = pkgs.lib.optionals (flags.validatestk) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.validatestk then true else false;
        };
        "hoed-tests-Stk-Example4" = {
          depends = pkgs.lib.optionals (flags.validatestk) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.validatestk then true else false;
        };
        "hoed-tests-Stk-IndirectRecursion" = {
          depends = pkgs.lib.optionals (flags.validatestk) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.validatestk then true else false;
        };
      };
    };
  }