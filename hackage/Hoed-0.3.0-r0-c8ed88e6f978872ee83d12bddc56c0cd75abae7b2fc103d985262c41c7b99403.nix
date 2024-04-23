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
        ];
        buildable = true;
      };
      exes = {
        "hoed-examples-Foldl" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-HeadOnEmpty1" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-HeadOnEmpty2" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-IndirectRecursion" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Pretty" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Example1" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Example3" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Example4" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Insort1" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Insort2" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-DoublingServer1" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-DoublingServer2" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-DoublingServer3" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-DoublingServer4" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-DoublingServer5" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Hashmap" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-Responsibility" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-TightRope1" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-TightRope2" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-TightRope3" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "hoed-examples-AskName" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.buildexamples then true else false;
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