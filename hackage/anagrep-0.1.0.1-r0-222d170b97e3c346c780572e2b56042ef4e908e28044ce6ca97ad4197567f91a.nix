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
    flags = { ghc = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "anagrep"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020, Dylan Simon";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "Find strings with permutations (anagrams) that match a regular expression";
      description = "Given a regular expression, determine if it matches any permutation of a given string.  For example, @\"lt[aeiou]*\"@ would match all strings with one \\'l\\', one \\'t\\', and vowels (like \\\"elate\\\", \\\"tail\\\", \\\"tl\\\", etc.).\nRegular expression parsing is based on <//hackage.haskell.org/package/regex-tdfa regex-tdfa> and generally follows those semantics, but not all regular expression features are supported.  For example, repeat modifiers cannot be applied to groups (such as @\"(abc)*\"@).\nThe goal is for matching to be fairly efficient in most cases, given that this problem is NP-complete.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optionals (flags.ghc) [
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
        ];
        buildable = true;
      };
      exes = {
        "anagrep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."anagrep" or (errorHandler.buildDepError "anagrep"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."anagrep" or (errorHandler.buildDepError "anagrep"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."anagrep" or (errorHandler.buildDepError "anagrep"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }