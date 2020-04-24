{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gamma"; version = "0.10.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus ΑΤ deepbondi dοt net>,\nAlexandre Rodrigues Baldé <alexandrer_b ΑΤ outlook dοt com>";
      author = "James Cook <mokus ΑΤ deepbondi dοt net>";
      homepage = "https://github.com/rockbmb/gamma2";
      url = "";
      synopsis = "Gamma function and related functions.";
      description = "Approximations of the gamma function, incomplete gamma\nfunctions, generalized gamma functions, and factorials.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."continued-fractions" or ((hsPkgs.pkgs-errors).buildDepError "continued-fractions"))
          (hsPkgs."converge" or ((hsPkgs.pkgs-errors).buildDepError "converge"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "gamma-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
            (hsPkgs."gamma" or ((hsPkgs.pkgs-errors).buildDepError "gamma"))
            (hsPkgs."numbers" or ((hsPkgs.pkgs-errors).buildDepError "numbers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }