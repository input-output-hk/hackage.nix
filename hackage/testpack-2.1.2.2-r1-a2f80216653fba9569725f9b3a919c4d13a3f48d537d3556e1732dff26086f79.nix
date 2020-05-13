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
      specVersion = "1.6";
      identifier = { name = "testpack"; version = "2.1.2.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "https://github.com/jgoerzen/testpack";
      url = "";
      synopsis = "Test Utililty Pack for HUnit and QuickCheck (unmaintained)";
      description = "Please note that this package is no longer maintained by its author!\n\nHaskell Test Utility Pack for HUnit and QuickCheck testpack provides\nutilities for both HUnit and QuickCheck. These include tools for\nrunning QuickCheck properties as HUnit test cases, allowing you to\ncombine both approaches in a single program. It also includes tools for\nmore helpful displays of running progress in both HUnit and QuickCheck,\nadditional generators for other types for QuickCheck, and shortcuts for\nquickly defining new test cases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }