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
      specVersion = "3.12";
      identifier = { name = "palindromes"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 - 2025 Utrecht University (Department of Information and Computing Sciences) and Johan Jeuring";
      maintainer = "johan@jeuring.net";
      author = "Utrecht University (Department of Information and Computing Sciences) and Johan Jeuring";
      homepage = "";
      url = "";
      synopsis = "Finding palindromes in strings";
      description = "palindromes is an executable and a library which takes a file name, and\nreturns information about palindromes in the file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "palindromes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."palindromes" or (errorHandler.buildDepError "palindromes"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests-palindromes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."levenshtein" or (errorHandler.buildDepError "levenshtein"))
            (hsPkgs."palindromes" or (errorHandler.buildDepError "palindromes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."palindromes" or (errorHandler.buildDepError "palindromes"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          ];
          buildable = true;
        };
        "profiling" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."palindromes" or (errorHandler.buildDepError "palindromes"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          ];
          buildable = true;
        };
      };
    };
  }