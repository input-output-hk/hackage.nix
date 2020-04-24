{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "perf-analysis"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/perf#readme";
      url = "";
      synopsis = "analysis example using perf";
      description = "Analytical tools to use with perf.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."perf" or ((hsPkgs.pkgs-errors).buildDepError "perf"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."tdigest" or ((hsPkgs.pkgs-errors).buildDepError "tdigest"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."readme-lhs" or ((hsPkgs.pkgs-errors).buildDepError "readme-lhs"))
          ];
        buildable = true;
        };
      exes = {
        "perf-examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."perf" or ((hsPkgs.pkgs-errors).buildDepError "perf"))
            (hsPkgs."perf-analysis" or ((hsPkgs.pkgs-errors).buildDepError "perf-analysis"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."tdigest" or ((hsPkgs.pkgs-errors).buildDepError "tdigest"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."readme-lhs" or ((hsPkgs.pkgs-errors).buildDepError "readme-lhs"))
            ];
          buildable = true;
          };
        };
      };
    }