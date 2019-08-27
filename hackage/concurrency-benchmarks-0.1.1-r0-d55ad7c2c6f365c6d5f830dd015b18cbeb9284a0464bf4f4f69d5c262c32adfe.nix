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
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."streamly" or (buildDepError "streamly"))
            ];
          };
        };
      };
    }