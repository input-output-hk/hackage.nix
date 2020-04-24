{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "range"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/robertmassaioli/range";
      url = "";
      synopsis = "An efficient and versatile range library.";
      description = "The range library alows the use of performant and versatile ranges in your code.\nIt supports bounded and unbounded ranges, ranges in a nested manner (like library\nversions), an efficient algebra of range computation and even a simplified interface\nfor ranges for the common cases. This library is far more efficient than using the\ndefault Data.List functions to approximate range behaviour. Performance is the major\nvalue offering of this library.\nIf this is your first time using this library it is highly recommended that you start\nwith \"Data.Range\"; it contains the basics of this library that meet most use\ncases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ] ++ [
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          ];
        buildable = true;
        };
      tests = {
        "test-range" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."range" or ((hsPkgs.pkgs-errors).buildDepError "range"))
            ] ++ [
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            ];
          buildable = true;
          };
        };
      };
    }