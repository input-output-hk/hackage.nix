{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kdt"; version = "0.2.4"; };
      license = "MIT";
      copyright = "Luis G. Torres, 2014";
      maintainer = "lgtorres42@gmail.com";
      author = "Luis G. Torres";
      homepage = "https://github.com/giogadi/kdt";
      url = "";
      synopsis = "Fast and flexible k-d trees for various types of point queries.";
      description = "This package includes static and dynamic versions of k-d trees,\nas well as \\\"Map\\\" variants that store data at each point in the\nk-d tree structure. Supports nearest neighbor,\nk nearest neighbors, points within a given radius, and points\nwithin a given range.\nTo learn to use this package, start with the documentation for\nthe \"Data.KdTree.Static\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
          (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
          ];
        buildable = true;
        };
      tests = {
        "StaticTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kdt" or ((hsPkgs.pkgs-errors).buildDepError "kdt"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
            ];
          buildable = true;
          };
        "DynamicTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kdt" or ((hsPkgs.pkgs-errors).buildDepError "kdt"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "KDTBenchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kdt" or ((hsPkgs.pkgs-errors).buildDepError "kdt"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
            ];
          buildable = true;
          };
        };
      };
    }