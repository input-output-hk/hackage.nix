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
          (hsPkgs.base)
          (hsPkgs.continued-fractions)
          (hsPkgs.converge)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "gamma-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.erf)
            (hsPkgs.gamma)
            (hsPkgs.numbers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }