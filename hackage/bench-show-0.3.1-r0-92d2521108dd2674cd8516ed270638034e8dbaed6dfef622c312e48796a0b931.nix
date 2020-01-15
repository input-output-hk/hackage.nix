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
      specVersion = "1.18";
      identifier = { name = "bench-show"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2017, 2018 Composewell Technologies";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/bench-show";
      url = "";
      synopsis = "Show, plot and compare benchmark results";
      description = "Generate text reports and graphical charts from the benchmark results generated\nby @gauge@ or @criterion@ and stored in a CSV file. This tool is especially\nuseful when you have many benchmarks or if you want to compare benchmarks\nacross multiple packages. You can generate many interesting reports\nincluding:\n\n* Show individual reports for all the fields measured e.g. @time taken@, @peak\nmemory usage@, @allocations@, among many other fields measured by @gauge@\n* Sort benchmark results on a specified criterion e.g. you may want to see the\nbiggest cpu hoggers or biggest memory hoggers on top\n* Across two benchmark runs (e.g. before and after a change), show all the\noperations that resulted in a regression of more than x% in descending\norder, so that we can quickly identify and fix performance problems in our\napplication.\n* Across two (or more) packages providing similar functionality, show all the\noperations where the performance differs by more than 10%, so that we can\ncritically analyze the packages and choose the right one.\n\nQuick Start: Use @gauge@ or @criterion@ to generate a @results.csv@ file, and\nthen use either the @bench-show@ executable or the library APIs to generate\ntextual or graphical reports.\n\n@\n\$ bench-show report results.csv\n\$ bench-show graph results.csv output\n@\n\n@\nreport \"results.csv\"  Nothing defaultConfig\ngraph  \"results.csv\" \"output\" defaultConfig\n@\n\nThere are many ways to present the reports, for example, you can show can\nshow % regression from a baseline in descending order textually as follows:\n\n@\n(time)(Median)(Diff using min estimator)\nBenchmark streamly(0)(μs)(base) streamly(1)(%)(-base)\n\\--------- --------------------- ---------------------\nzip                      644.33                +23.28\nmap                      653.36                 +7.65\nfold                     639.96                -15.63\n@\n\nTo show the same graphically:\n\n<<src/docs/regression-percent-descending-median-time.svg>>\n\nSee the README and the \"BenchShow.Tutorial\" module for comprehensive\ndocumentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Chart" or (buildDepError "Chart"))
          (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
          (hsPkgs."csv" or (buildDepError "csv"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "bench-show" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-simple" or (buildDepError "optparse-simple"))
            (hsPkgs."bench-show" or (buildDepError "bench-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."bench-show" or (buildDepError "bench-show"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "doc" = {
          depends = [
            (hsPkgs."bench-show" or (buildDepError "bench-show"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }