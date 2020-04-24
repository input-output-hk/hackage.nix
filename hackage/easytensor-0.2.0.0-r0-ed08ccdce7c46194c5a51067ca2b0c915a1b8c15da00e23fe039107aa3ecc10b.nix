{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unsafeindices = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "easytensor"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Pure haskell vector/matrix/tensor library.\nFeatures dimensionality type-checking for all operations.\nGeneric n-dimensional versions are implemented using low-level prim ops.\nAllows ad-hoc replacement with fixed low-dimensionality vectors and matrices without changing user interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
          ];
        buildable = true;
        };
      tests = {
        "et-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."easytensor" or ((hsPkgs.pkgs-errors).buildDepError "easytensor"))
            (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "et-bench-misc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."easytensor" or ((hsPkgs.pkgs-errors).buildDepError "easytensor"))
            (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
            ];
          buildable = true;
          };
        "et-bench-spfolds" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."easytensor" or ((hsPkgs.pkgs-errors).buildDepError "easytensor"))
            (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }