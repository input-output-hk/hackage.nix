{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "roc-cluster"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Hexresearch Team";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/hexresearch/roc-cluster#readme";
      url = "";
      synopsis = "ROC online clustering algorithm";
      description = "Provides generic implementation for ROC online clustering algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "roc-cluster-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."roc-cluster" or ((hsPkgs.pkgs-errors).buildDepError "roc-cluster"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }