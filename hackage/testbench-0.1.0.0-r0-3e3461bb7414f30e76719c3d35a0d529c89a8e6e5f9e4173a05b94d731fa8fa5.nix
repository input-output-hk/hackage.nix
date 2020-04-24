{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "testbench"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Create tests and benchmarks together";
      description = "Test your benchmarks!  Benchmark your tests!\n\nIt's too easy to accidentally try and benchmark apples and oranges\ntogether.  Wouldn't it be nice if you could somehow guarantee that\nyour benchmarks satisfy some simple tests (e.g. a group of comparisons\nall return the same value)?\n\nFurthermore, trying to compare multiple inputs/functions against each\nother requires a lot of boilerplate, making it even easier to\naccidentally compare the wrong things (e.g. using `whnf` instead of\n`nf`).\n\n/testbench/ aims to help solve these problems and more by making it\neasier to write unit tests and benchmarks together by stating up-front\nwhat requirements are needed and then using simple functions to state\nthe next parameter to be tested/benchmarked.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
          (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."testbench" or ((hsPkgs.pkgs-errors).buildDepError "testbench"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }