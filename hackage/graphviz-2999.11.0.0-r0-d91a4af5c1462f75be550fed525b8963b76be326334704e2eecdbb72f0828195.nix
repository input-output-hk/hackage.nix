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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "graphviz"; version = "2999.11.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic+graphviz@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "http://projects.haskell.org/graphviz/";
      url = "";
      synopsis = "Graphviz bindings for Haskell.";
      description = "This library provides bindings for the Dot language used by the\nGraphviz (<http://graphviz.org/>) suite of programs, as well as\nfunctions to call those programs.\n\nMain features of the graphviz library include:\n\n* Almost complete coverage of all Graphviz attributes and syntax.\n\n* Support for specifying clusters.\n\n* The ability to use a custom node type.\n\n* Functions for running a Graphviz layout tool with all specified\noutput types.\n\n* The ability to not only generate but also parse Dot code with two\noptions: strict and liberal (in terms of ordering of statements).\n\n* Functions to convert FGL graphs to Dot code - including support to\ngroup them into clusters - with a high degree of customisation by\nspecifying which attributes to use and limited support for the\ninverse operation.\n\n* Round-trip support for passing an FGL graph through Graphviz to\naugment node and edge labels with positional information, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (flags.test) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
      };
      exes = {
        "graphviz-testsuite" = {
          buildable = if flags.test then true else false;
        };
      };
    };
  }