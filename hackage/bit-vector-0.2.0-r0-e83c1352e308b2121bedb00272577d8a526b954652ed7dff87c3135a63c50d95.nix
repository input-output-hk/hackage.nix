{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bit-vector"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com";
      author = "Adam C. Foltzer";
      homepage = "https://github.com/acfoltzer/bit-vector";
      url = "";
      synopsis = "Simple bit vectors for Haskell";
      description = "Operations for using a vector of Booleans as a bit vector. Intended more for pedagogical purposes than for serious applications";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."bit-vector" or ((hsPkgs.pkgs-errors).buildDepError "bit-vector"))
            ];
          buildable = true;
          };
        };
      };
    }