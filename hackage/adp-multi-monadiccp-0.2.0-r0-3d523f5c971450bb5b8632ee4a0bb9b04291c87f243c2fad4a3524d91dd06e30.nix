{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "adp-multi-monadiccp"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Maik Riechert, 2013";
      maintainer = "Maik Riechert";
      author = "Maik Riechert";
      homepage = "http://adp-multi.ruhoh.com";
      url = "";
      synopsis = "Subword construction in adp-multi using monadiccp";
      description = "This is an experimental subword construction algorithm\nfor the adp-multi package. It uses the constraint\nprogramming framework monadiccp with the constraint solver\nOvertonFD. It is slower than the built-in algorithm in\nadp-multi and serves research purposes.\nUse it by importing ADP.Multi.Constraint.All instead\nof ADP.Multi.Rewriting.All in your grammar files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."adp-multi" or ((hsPkgs.pkgs-errors).buildDepError "adp-multi"))
          (hsPkgs."monadiccp" or ((hsPkgs.pkgs-errors).buildDepError "monadiccp"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."adp-multi" or ((hsPkgs.pkgs-errors).buildDepError "adp-multi"))
            (hsPkgs."monadiccp" or ((hsPkgs.pkgs-errors).buildDepError "monadiccp"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }