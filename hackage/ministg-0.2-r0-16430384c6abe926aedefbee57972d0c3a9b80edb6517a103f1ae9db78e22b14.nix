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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ministg"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Bernard James Pope";
      maintainer = "bjpop@csse.unimelb.edu.au";
      author = "Bernard James Pope ";
      homepage = "http://www.haskell.org/haskellwiki/Ministg ";
      url = "";
      synopsis = "an interpreter for an operational semantics for the STG machine. ";
      description = "ministg is an interpreter for a simple high-level operational semantics for the STG machine. The\nsemantics is taken from the research paper \"Making a fast curry: push/enter vs. eval/apply\nfor higher-order languages\", by Simon Marlow and Simon Peyton Jones. It provides the option\nto trace the execution of the interpreter, rendering each step in a HTML file. This is useful\nfor understanding the behaviour of the STG machine, and also useful for experimenting with\nchanges to the machine. It also supports an experimental call stack tracing facility.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ministg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }