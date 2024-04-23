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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "HUnit"; version = "1.2.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hunit@richardg.name";
      author = "Dean Herington";
      homepage = "http://hunit.sourceforge.net/";
      url = "";
      synopsis = "A unit testing framework for Haskell";
      description = "HUnit is a unit testing framework for Haskell, inspired by the\nJUnit tool for Java, see: <http://www.junit.org>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
      };
      exes = {
        "basic-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = true;
        };
        "extended-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = true;
        };
        "terminal-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = true;
        };
        "optimize-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = true;
        };
      };
    };
  }