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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            ];
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
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."list-transformer" or (buildDepError "list-transformer"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."logict" or (buildDepError "logict"))
            (hsPkgs."machines" or (buildDepError "machines"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."streamly" or (buildDepError "streamly"))
            ];
          };
        };
      };
    }