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
      specVersion = "1.10";
      identifier = { name = "missing-py2"; version = "1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 2005-2008 John Goerzen";
      maintainer = "Dom De Re";
      author = "John Goerzen";
      homepage = "https://github.com/domdere/missing-py2";
      url = "";
      synopsis = "Haskell interface to Python";
      description = "A Haskell Interface into the standard Python Interpreter\nA fork of John Goerzen's MissingPy library, hlinted and updated to run with GHC 7.6.3,\nthis is for legacy projects,\nfor newer projects you might want to consider http://hackage.haskell.org/package/cpython\ninstead\nOriginal Documentation:\nMissingPy is two things:\n\nA Haskell binding for many C and Python libraries for tasks such as\ndata compression, databases, etc.  This can be found in the\nMissingPy module tree.\n\nAlso, it's a low-level Haskell binding to the Python interpreter to\nenable development of hybrid applications that use both\nenvironments.  This can be found in the Python module tree.  The\nHaskell bindings above use this environment.\n\nMissingPy permits you to call Python code from Haskell.  It does NOT\npermit you to call Haskell code from Python.\n\nMissingPy is the companion to my MissingH library, and integrates with\nit.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."anydbm" or (errorHandler.buildDepError "anydbm"))
        ];
        buildable = true;
      };
      tests = {
        "originalunittests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."anydbm" or (errorHandler.buildDepError "anydbm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."missing-py2" or (errorHandler.buildDepError "missing-py2"))
          ];
          buildable = true;
        };
      };
    };
  }