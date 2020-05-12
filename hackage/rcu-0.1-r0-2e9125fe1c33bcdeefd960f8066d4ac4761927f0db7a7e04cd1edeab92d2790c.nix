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
    flags = { test-doctests = true; test-hlint = true; unstable = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "rcu"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Edward A. Kmett, Theodore Rhys Cooper";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>, Ted Cooper <anthezium@gmail.com>";
      author = "Ted Cooper and Edward A. Kmett";
      homepage = "http://github.com/ekmett/rcu/";
      url = "";
      synopsis = "Read-Copy-Update for Haskell";
      description = "Read-Copy-Update for Haskell";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.unstable) (hsPkgs."stm" or (errorHandler.buildDepError "stm"));
        buildable = true;
        };
      exes = {
        "MoveStringSTM" = {
          depends = (pkgs.lib).optionals (!(!flags.unstable)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rcu" or (errorHandler.buildDepError "rcu"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if !flags.unstable then false else true;
          };
        "MoveStringQSBR" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rcu" or (errorHandler.buildDepError "rcu"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = if !flags.test-doctests then false else true;
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        };
      };
    }