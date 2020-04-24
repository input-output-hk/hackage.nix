{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "language-spelling"; version = "0.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."listlike-instances" or ((hsPkgs.pkgs-errors).buildDepError "listlike-instances"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }