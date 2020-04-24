{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hs-carbon"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cholmgreen@gmail.com";
      author = "Casper M. H. Holmgreen";
      homepage = "";
      url = "";
      synopsis = "A Haskell framework for parallel monte carlo simulations";
      description = "Carbon is an open-source, Haskell framework aiming to provide easy access to\nparallel Monte Carlo simulations by providing a simple, but powerful\ncompositional method for building simulations and high-level functions for\nrunning them.\nExamples can be found at <https://github.com/icasperzen/hs-carbon-examples>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hs-carbon" or ((hsPkgs.pkgs-errors).buildDepError "hs-carbon"))
            ];
          buildable = true;
          };
        };
      };
    }