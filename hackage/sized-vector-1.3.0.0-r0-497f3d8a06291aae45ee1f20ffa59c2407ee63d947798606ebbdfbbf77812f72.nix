{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sized-vector"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/sized-vector";
      url = "";
      synopsis = "Size-parameterized vector types and functions.";
      description = "Size-parameterized vector types and functions using a data-type promotion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."type-natural" or ((hsPkgs.pkgs-errors).buildDepError "type-natural"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."monomorphic" or ((hsPkgs.pkgs-errors).buildDepError "monomorphic"))
          (hsPkgs."equational-reasoning" or ((hsPkgs.pkgs-errors).buildDepError "equational-reasoning"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      benchmarks = {
        "coercion-bench" = {
          depends = [
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."progression" or ((hsPkgs.pkgs-errors).buildDepError "progression"))
            (hsPkgs."sized-vector" or ((hsPkgs.pkgs-errors).buildDepError "sized-vector"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."type-natural" or ((hsPkgs.pkgs-errors).buildDepError "type-natural"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }