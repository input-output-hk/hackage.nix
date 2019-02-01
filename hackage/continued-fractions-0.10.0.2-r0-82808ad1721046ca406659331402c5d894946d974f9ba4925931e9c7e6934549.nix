{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "continued-fractions"; version = "0.10.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus ΑT deepbondi dot net>,\nAlexandre Rodrigues Baldé <alexandrer_b ΑT outlook dot com>";
      author = "James Cook <mokus ΑT deepbondi dot net>";
      homepage = "https://github.com/rockbmb/continued-fractions";
      url = "";
      synopsis = "Continued fractions.";
      description = "A type and some functions for manipulating and\nevaluating continued fractions.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "continued-fractions-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.continued-fractions)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }