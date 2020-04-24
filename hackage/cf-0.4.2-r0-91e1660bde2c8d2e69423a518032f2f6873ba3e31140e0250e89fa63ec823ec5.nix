{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cf"; version = "0.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "mitchell.v.riley@gmail.com";
      author = "Mitchell Riley";
      homepage = "http://github.com/mvr/cf";
      url = "";
      synopsis = "Exact real arithmetic using continued fractions";
      description = "Continued fraction arithmetic using Gosper's algorithm for the\nbasic operations, and Vuillemin and Lester's techniques for\ntranscendental functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cf" or ((hsPkgs.pkgs-errors).buildDepError "cf"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      };
    }