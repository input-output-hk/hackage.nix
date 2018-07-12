{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-spelling";
          version = "0.3.1";
        };
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
        "language-spelling" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.ListLike
            hsPkgs.listlike-instances
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.bk-tree
            hsPkgs.tst
          ];
        };
        tests = {
          "benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.random-shuffle
              hsPkgs.bytestring
              hsPkgs.time
            ];
          };
        };
      };
    }