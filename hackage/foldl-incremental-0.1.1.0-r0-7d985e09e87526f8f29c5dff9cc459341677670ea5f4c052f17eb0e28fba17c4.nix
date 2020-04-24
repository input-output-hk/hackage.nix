{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "foldl-incremental"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) Tony Day 2014";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/foldl-incremental";
      url = "";
      synopsis = "incremental folds";
      description = "This library provides incremental statistical folds based upon the\nfoldl libray.  An incremental statistical fold can be thought of as\nexponentially-weighting statistics designed to be efficient computations over\na Foldable.\nIt supplies \"incrementalize\" which turns any unary function into a\n\"Fold\".  As a reference, \\\"incrementalize id\\\" is an exponentially-weighted moving average.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."foldl-incremental" or ((hsPkgs.pkgs-errors).buildDepError "foldl-incremental"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."hastache" or ((hsPkgs.pkgs-errors).buildDepError "hastache"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."foldl-incremental" or ((hsPkgs.pkgs-errors).buildDepError "foldl-incremental"))
            ];
          buildable = true;
          };
        };
      };
    }