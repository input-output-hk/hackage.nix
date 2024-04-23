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
      specVersion = "1.8";
      identifier = { name = "language-spelling"; version = "0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Francesco Mazzoli (f@mazzo.li)";
      author = "Francesco Mazzoli (f@mazzo.li)";
      homepage = "https://github.com/bitonic/language-spelling";
      url = "";
      synopsis = "Various tools to detect/correct mistakes in words";
      description = "Haskell library meant to be a set of tools to correct spelling mistakes,\nhomophones, and OCR errors.\n\nSample session:\n\n@\nghci> :m + Language.Distance.Search.BK\nghci> distance \\\"foo\\\" \\\"bar\\\" :: Distance DamerauLevenshtein\n3\nghci> let bk = foldr insert empty [\\\"foo\\\", \\\"foa\\\", \\\"fooa\\\", \\\"ofo\\\", \\\"arstu\\\", \\\"nana\\\", \\\"faa\\\"] :: BKTree String 'DamerauLevenshtein'\nghci> query 0 \\\"foo\\\" bk\n[(\\\"foo\\\",Distance 0)]\nghci> query 2 \\\"foo\\\" bk\n[(\\\"faa\\\",Distance 2),(\\\"foa\\\",Distance 1),(\\\"fooa\\\",Distance 1),(\\\"foo\\\",Distance 0),(\\\"ofo\\\",Distance 1)]\n@\n\nTODO:\n\n*   Phonetic algorithms: metaphone, double metaphone, maybe others\n\n*   Tests and better benchmarking\n\n*   Cost tuning when searching";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."listlike-instances" or (errorHandler.buildDepError "listlike-instances"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bk-tree" or (errorHandler.buildDepError "bk-tree"))
          (hsPkgs."tst" or (errorHandler.buildDepError "tst"))
        ];
        buildable = true;
      };
      tests = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }