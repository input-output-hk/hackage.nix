{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
          (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "bench-show" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."optparse-simple" or ((hsPkgs.pkgs-errors).buildDepError "optparse-simple"))
            (hsPkgs."bench-show" or ((hsPkgs.pkgs-errors).buildDepError "bench-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."bench-show" or ((hsPkgs.pkgs-errors).buildDepError "bench-show"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "doc" = {
          depends = [
            (hsPkgs."bench-show" or ((hsPkgs.pkgs-errors).buildDepError "bench-show"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }