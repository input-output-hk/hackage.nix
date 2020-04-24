{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "disjoint-set"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<maxwellsayles@gmail.com>, <myles.maxfield@gmail.com>";
      author = "Maxwell Sayles, Myles Maxfield";
      homepage = "https://github.com/maxwellsayles/disjoint-set";
      url = "";
      synopsis = "Persistent disjoint-sets, a.k.a union-find.";
      description = "This is a persistent data structure for disjoint sets.\n\nThe algorithm is described in \"Introduction to\nAlgorithms\" by Cormen, et al. The implementation here\nuses both union by rank and path compression. We\nincur an O(logn) overhead because of the use of\npersistent maps.\n\nData.IntDisjointSet is as strict as possible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }