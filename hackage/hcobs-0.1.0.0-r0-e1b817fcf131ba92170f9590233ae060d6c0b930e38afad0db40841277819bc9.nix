{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hcobs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dario Bertini";
      maintainer = "berdario@gmail.com";
      author = "Dario Bertini";
      homepage = "https://github.com/berdario/hcobs#readme";
      url = "";
      synopsis = "An implementation of the Consistent Overhead Byte Stuffing algorithm";
      description = "An implementation of the Consistent Overhead Byte Stuffing algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "hcobs-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hcobs" or ((hsPkgs.pkgs-errors).buildDepError "hcobs"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        "hcobs-weigh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hcobs" or ((hsPkgs.pkgs-errors).buildDepError "hcobs"))
            (hsPkgs."weigh" or ((hsPkgs.pkgs-errors).buildDepError "weigh"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mainbench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }