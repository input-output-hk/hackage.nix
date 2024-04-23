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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "visual-prof"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djvelkov@gmail.com";
      author = "Daniel Velkov";
      homepage = "http://github.com/djv/VisualProf";
      url = "";
      synopsis = "Create a visual profile of a program's source code";
      description = "visual-prof profiles your Haskell program and generates a html file containing\nits source code with parts of the code highlighted in different\ncolors depending on the fraction of the running time that they take.\nvisual-prof gives you an easy way to find places for optimization in your code.\n\nUsage:\n\n> visual-prof -px A/B/C.hs run \"arg1 arg2\"\n\nThis will profile the C.hs file used by run.hs which contains the Main module\nof your project. Arguments to ./run are passed as shown (arg1, arg2,...). The parameters\nshould be given in that order.\n\nThe simplest way to run it is:\n\n> visual-prof -px test.hs test\n\nwhich will generate a profile for the file test.hs (which needs to have a main function)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "visual-prof" = {
          depends = [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }