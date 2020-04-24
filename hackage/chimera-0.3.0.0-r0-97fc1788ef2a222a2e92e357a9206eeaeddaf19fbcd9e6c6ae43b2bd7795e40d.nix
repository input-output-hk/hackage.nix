{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chimera"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Bodigrim";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "https://github.com/Bodigrim/chimera#readme";
      url = "";
      synopsis = "Lazy infinite streams with O(1) indexing";
      description = "There are plenty of memoizing libraries on Hackage, but they\nusually fall into two categories:\n\n* Store cache as a flat array, enabling us\nto obtain cached values in O(1) time, which is nice.\nThe drawback is that one must specify the size\nof the array beforehand,\nlimiting an interval of inputs,\nand actually allocate it at once.\n* Store cache as a lazy binary tree.\nThanks to laziness, one can freely use the full range of inputs.\nThe drawback is that obtaining values from a tree\ntakes logarithmic time and is unfriendly to CPU cache,\nwhich kinda defeats the purpose.\n\nThis package intends to tackle both issues,\nproviding a data type 'Chimera' for\nlazy infinite compact streams with cache-friendly O(1) indexing.\n\nAdditional features include:\n\n* memoization of recursive functions and recurrent sequences,\n* memoization of functions of several, possibly signed arguments,\n* efficient memoization of boolean predicates.";
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
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chimera" or ((hsPkgs.pkgs-errors).buildDepError "chimera"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }