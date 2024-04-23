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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bench-graph" or (errorHandler.buildDepError "bench-graph"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."getopt-generics" or (errorHandler.buildDepError "getopt-generics"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."drinkery" or (errorHandler.buildDepError "drinkery"))
          ];
          buildable = true;
        };
      };
    };
  }