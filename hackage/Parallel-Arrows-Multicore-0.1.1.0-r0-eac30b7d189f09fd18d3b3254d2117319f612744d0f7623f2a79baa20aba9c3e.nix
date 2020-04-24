{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Parallel-Arrows-Multicore"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Martin Braun";
      author = "";
      homepage = "https://github.com/s4ke/Parrows#readme";
      url = "";
      synopsis = "GpH based backend for @Parallel-Arrows-Definition@ in a multicore variant.";
      description = "GpH based backend for @Parallel-Arrows-Definition@ in a multicore variant. Use this backend for shared-memory programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Parallel-Arrows-Definition" or ((hsPkgs.pkgs-errors).buildDepError "Parallel-Arrows-Definition"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."Parallel-Arrows-BaseSpec" or ((hsPkgs.pkgs-errors).buildDepError "Parallel-Arrows-BaseSpec"))
            (hsPkgs."Parallel-Arrows-Definition" or ((hsPkgs.pkgs-errors).buildDepError "Parallel-Arrows-Definition"))
            (hsPkgs."Parallel-Arrows-Multicore" or ((hsPkgs.pkgs-errors).buildDepError "Parallel-Arrows-Multicore"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }