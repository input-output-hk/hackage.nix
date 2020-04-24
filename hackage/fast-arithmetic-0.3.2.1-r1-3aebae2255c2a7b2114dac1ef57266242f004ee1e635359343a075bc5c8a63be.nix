{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "fast-arithmetic"; version = "0.3.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/fast-arithmetic#readme";
      url = "";
      synopsis = "Fast functions on integers.";
      description = "Fast functions for number theory and combinatorics with a high level of safety guaranteed by [ATS](http://www.ats-lang.org/). This package also provides a\n'Storable' instance for GMP's @mpz@ type.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.ats-setup or (pkgs.buildPackages.ats-setup or ((hsPkgs.pkgs-errors).buildToolDepError "ats-setup")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."composition-prelude" or ((hsPkgs.pkgs-errors).buildDepError "composition-prelude"))
          (hsPkgs."recursion-schemes" or ((hsPkgs.pkgs-errors).buildDepError "recursion-schemes"))
          ];
        buildable = true;
        };
      tests = {
        "fast-arithmetic-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fast-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "fast-arithmetic"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
            (hsPkgs."combinat" or ((hsPkgs.pkgs-errors).buildDepError "combinat"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fast-arithmetic-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fast-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "fast-arithmetic"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
            (hsPkgs."combinat" or ((hsPkgs.pkgs-errors).buildDepError "combinat"))
            ];
          buildable = true;
          };
        };
      };
    }