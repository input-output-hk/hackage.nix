{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kmeans-par"; version = "1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@vikramverma.com";
      author = "vi";
      homepage = "";
      url = "";
      synopsis = "Sequential and parallel implementations of Lloyd's algorithm.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."metric" or ((hsPkgs.pkgs-errors).buildDepError "metric"))
          ];
        buildable = true;
        };
      benchmarks = {
        "kmeans-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."normaldistribution" or ((hsPkgs.pkgs-errors).buildDepError "normaldistribution"))
            (hsPkgs."kmeans-par" or ((hsPkgs.pkgs-errors).buildDepError "kmeans-par"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."metric" or ((hsPkgs.pkgs-errors).buildDepError "metric"))
            ];
          buildable = true;
          };
        };
      };
    }