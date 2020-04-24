{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aig"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2017 Galois Inc.";
      maintainer = "jhendrix@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "And-inverter graphs in Haskell.";
      description = "This package provides a generic interfaces for working\nwith And-Inverter graphs (AIGs) in Haskell.  And-Inverter graphs\nare a useful format for representing combinatorial and\nsequential boolean circuits in a way that is amenable to\nsimulation and analysis.\nThese interfaces allow clients to write code that can create\nand use AIGs without depending on a particular AIG package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "aig-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aig" or ((hsPkgs.pkgs-errors).buildDepError "aig"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-ant-xml" or ((hsPkgs.pkgs-errors).buildDepError "tasty-ant-xml"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }