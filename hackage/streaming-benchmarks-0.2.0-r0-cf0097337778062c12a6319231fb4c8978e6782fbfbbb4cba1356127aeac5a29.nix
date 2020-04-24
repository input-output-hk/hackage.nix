{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streaming-benchmarks"; version = "0.2.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2017 Harendra Kumar";
      maintainer = "Harendra Kumar";
      author = "Harendra Kumar";
      homepage = "http://github.com/composewell/streaming-benchmarks";
      url = "";
      synopsis = "Benchmarks to compare streaming packages";
      description = "Benchmarks along with with pretty comparative graph generation for streaming\noperations and their comparisons across notable Haskell streaming libraries\nincluding `streamly`, `vector`, `streaming`, `machines`, `pipes`, and\n`conduit`.\n<http://hackage.haskell.org/package/streamly streamly> is a streaming library\nwith native - high level, declarative and composable concurrency, it\nis the primary motivation for these benchmarks.\n\nIf you are using @stack@ then you can just use @./run.sh@ to run the\nbenchmarks; use @--quick@ option to get the result quickly; charts will be\ngenerated in the `charts` directory. Use @./run.sh --help@ for all script\noptions.\n\nWith any build tool, run the benchmarks with @--csv=results.csv@ as arguments\n(you can pass any @gauge@ arguments including @--quick@) and then use\n@makecharts results.csv \"streamly,vector,...\" False@ to create the charts.\nThe second argument to @makecharts@ is the list of package names, the third\nargument is whether to plot full or diff from the first package.\n\nSee the README file shipped with the package or\n<https://github.com/composewell/streaming-benchmarks in the github repo>\nfor more details. The github repo also shows the latest comparative graphs.";
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
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."drinkery" or ((hsPkgs.pkgs-errors).buildDepError "drinkery"))
            ];
          buildable = true;
          };
        };
      };
    }