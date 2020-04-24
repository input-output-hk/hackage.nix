{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "largeword"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz <dominic@steinitz.org>";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Dominic Steinitz <dominic@steinitz.org>";
      homepage = "http://trac.haskell.org/largeword/wiki";
      url = "";
      synopsis = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
      description = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
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
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
            ];
          buildable = true;
          };
        };
      };
    }