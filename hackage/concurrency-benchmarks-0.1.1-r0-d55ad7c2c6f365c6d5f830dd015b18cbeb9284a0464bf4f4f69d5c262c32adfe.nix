{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrency-benchmarks"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Harendra Kumar";
      maintainer = "Harendra Kumar";
      author = "Harendra Kumar";
      homepage = "http://github.com/composewell/concurrency-benchmarks";
      url = "";
      synopsis = "Benchmarks to compare concurrency APIs";
      description = "Benchmarks to compare the pure concurrency overhead of various flavors of\nconcurrent @streamly@ streams and the @async@ package.\n\nUse @cabal new-bench@ or @stack bench@ to run the benchmarks. To generate\ncharts, run the benchmarks with @--csv-raw=results.csv@ option and then run\n@makecharts results.csv@. Charts are generated in the @charts@ directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "makecharts" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bench-graph" or ((hsPkgs.pkgs-errors).buildDepError "bench-graph"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
            (hsPkgs."getopt-generics" or ((hsPkgs.pkgs-errors).buildDepError "getopt-generics"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            ];
          buildable = true;
          };
        };
      };
    }