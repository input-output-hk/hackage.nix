{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hyperloglogplus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Eugene Zhulenev";
      maintainer = "eugene.zhulenev@gmail.com";
      author = "Eugene Zhulenev";
      homepage = "https://github.com/ezhulenev/hyperloglogplus#readme";
      url = "";
      synopsis = "Approximate cardinality estimation using constant space";
      description = "HyperLogLog++ with MinHash for efficient cardinality and intersection estimation\nusing constant space.\n\nSee original AdRoll paper for details:\n<http://tech.adroll.com/media/hllminhash.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."murmur-hash" or ((hsPkgs.pkgs-errors).buildDepError "murmur-hash"))
          ];
        buildable = true;
        };
      tests = {
        "hyperloglogplus-test" = {
          depends = [
            (hsPkgs."hyperloglogplus" or ((hsPkgs.pkgs-errors).buildDepError "hyperloglogplus"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            ];
          buildable = true;
          };
        };
      };
    }