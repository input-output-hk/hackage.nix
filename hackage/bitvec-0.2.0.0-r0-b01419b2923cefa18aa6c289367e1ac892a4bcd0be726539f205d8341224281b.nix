{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitvec"; version = "0.2.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "James Cook <mokus@deepbondi.net>,\nAndrew Lelechenko <andrew.lelechenko@gmail.com>";
      homepage = "https://github.com/Bodigrim/bitvec";
      url = "";
      synopsis = "Unboxed bit vectors";
      description = "Bit vectors library for Haskell.\nThe current @vector@ package represents unboxed arrays of @Bool@\nallocating one byte per boolean, which might be considered wasteful.\nThis library provides a newtype wrapper @Bit@ and a custom instance\nof unboxed @Vector@, which packs booleans densely.\nIt is a time-memory tradeoff: 8x less memory footprint\nat the price of moderate performance penalty\n(mostly, for random writes).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "bitvec-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bitvec" or ((hsPkgs.pkgs-errors).buildDepError "bitvec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes"))
            ];
          buildable = true;
          };
        };
      };
    }