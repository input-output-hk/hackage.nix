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
      specVersion = "1.2";
      identifier = { name = "chp"; version = "2.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008--2010, University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
      url = "";
      synopsis = "An implementation of concurrency ideas from Communicating Sequential Processes";
      description = "The Communicating Haskell Processes (CHP) library is an\nimplementation of message-passing concurrency ideas from\nHoare's Communicating Sequential Processes.  More details and\na tutorial can be found at its homepage:\n<http://www.cs.kent.ac.uk/projects/ofa/chp/>, and there is\nalso now a blog with examples of using the library:\n<http://chplib.wordpress.com/>.  The library requires at\nleast GHC 6.8.1.  NOTE: since version 2.0.0, some capabilities\nthat were present in version 1.x have been moved out to the\nchp-plus package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."loop-while" or (errorHandler.buildDepError "loop-while"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }