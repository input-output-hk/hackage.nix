{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "semialign-extras"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "jack.kelly@data61.csiro.au";
      author = "Jack Kelly";
      homepage = "";
      url = "";
      synopsis = "Extra functions for working with Semialigns";
      description = "The 'Semialign' typeclass lets us line up two structures of the\nsame type. By combining this with the classes from the\n\"witherable\" package, we can derive a number of useful\ndiff \\/ patch \\/ merge-style operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."semialign" or ((hsPkgs.pkgs-errors).buildDepError "semialign"))
          (hsPkgs."semialign-indexed" or ((hsPkgs.pkgs-errors).buildDepError "semialign-indexed"))
          (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
          (hsPkgs."witherable" or ((hsPkgs.pkgs-errors).buildDepError "witherable"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }