{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "constrained-category"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "";
      url = "";
      synopsis = "Constrained Categories";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."alg" or ((hsPkgs.pkgs-errors).buildDepError "alg"))
          (hsPkgs."category" or ((hsPkgs.pkgs-errors).buildDepError "category"))
          (hsPkgs."constraint" or ((hsPkgs.pkgs-errors).buildDepError "constraint"))
          (hsPkgs."unconstrained" or ((hsPkgs.pkgs-errors).buildDepError "unconstrained"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."constrained-category" or ((hsPkgs.pkgs-errors).buildDepError "constrained-category"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."constrained-category" or ((hsPkgs.pkgs-errors).buildDepError "constrained-category"))
            ];
          buildable = true;
          };
        };
      };
    }