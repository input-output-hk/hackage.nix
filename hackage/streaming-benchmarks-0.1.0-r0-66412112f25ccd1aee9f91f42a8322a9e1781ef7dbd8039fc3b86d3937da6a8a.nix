{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streaming-benchmarks"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2017 Harendra Kumar";
      maintainer = "Harendra Kumar";
      author = "Harendra Kumar";
      homepage = "http://github.com/composewell/streaming-benchmarks";
      url = "";
      synopsis = "Benchmarks to compare streaming packages";
      description = "Comprehensive, carefully crafted benchmarks for streaming operations and\ntheir comparisons across notable Haskell streaming libraries including\n`streaming`, `machines`, `pipes`, `conduit` and `streamly`.\n<http://hackage.haskell.org/package/streamly Streamly> is a new\nstreaming library with high level and composable concurrency built-in, it is\nthe primary motivation for these benchmarks. We have put a lot of effort to\nmake sure that the benchmarks are correct, fair and reproducible.  Please\nreport if you find something that is not right.\n\nIf you are using @stack@ then use @./run.sh@ to run the benchmarks;\ncharts will be generated in the `charts` directory.\n\nWith any build tool, run the benchmarks with\n@--csv=results.csv@ as arguments and then use @makecharts results.csv@ to\ncreate the charts. In case you want to be pedantic about accurate results\nthen you can run the benchmarks in the same way as @run.sh@ invokes them.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "makecharts" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
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
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."list-transformer" or ((hsPkgs.pkgs-errors).buildDepError "list-transformer"))
            (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
            (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
            (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            ];
          buildable = true;
          };
        };
      };
    }