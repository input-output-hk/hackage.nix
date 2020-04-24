{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "exact-pi"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "douglas.mcclean@gmail.com";
      author = "Douglas McClean";
      homepage = "https://github.com/dmcclean/exact-pi/";
      url = "";
      synopsis = "Exact rational multiples of pi (and integer powers of pi)";
      description = "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.\nUseful for storing and computing with conversion factors between physical units.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."numtype-dk" or ((hsPkgs.pkgs-errors).buildDepError "numtype-dk"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."exact-pi" or ((hsPkgs.pkgs-errors).buildDepError "exact-pi"))
            (hsPkgs."numtype-dk" or ((hsPkgs.pkgs-errors).buildDepError "numtype-dk"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }