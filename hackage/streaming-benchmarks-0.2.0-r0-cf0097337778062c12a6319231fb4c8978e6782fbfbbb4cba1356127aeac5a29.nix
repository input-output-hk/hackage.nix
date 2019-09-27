let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bench-graph" or (buildDepError "bench-graph"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."getopt-generics" or (buildDepError "getopt-generics"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."machines" or (buildDepError "machines"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."drinkery" or (buildDepError "drinkery"))
            ];
          buildable = true;
          };
        };
      };
    }