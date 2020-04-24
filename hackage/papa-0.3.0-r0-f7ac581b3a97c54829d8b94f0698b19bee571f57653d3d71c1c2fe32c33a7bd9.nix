{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "papa"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/papa";
      url = "";
      synopsis = "Reasonable default import";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nReasonable default import";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."papa-base" or ((hsPkgs.pkgs-errors).buildDepError "papa-base"))
          (hsPkgs."papa-base-export" or ((hsPkgs.pkgs-errors).buildDepError "papa-base-export"))
          (hsPkgs."papa-base-implement" or ((hsPkgs.pkgs-errors).buildDepError "papa-base-implement"))
          (hsPkgs."papa-bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "papa-bifunctors"))
          (hsPkgs."papa-bifunctors-export" or ((hsPkgs.pkgs-errors).buildDepError "papa-bifunctors-export"))
          (hsPkgs."papa-bifunctors-implement" or ((hsPkgs.pkgs-errors).buildDepError "papa-bifunctors-implement"))
          (hsPkgs."papa-lens" or ((hsPkgs.pkgs-errors).buildDepError "papa-lens"))
          (hsPkgs."papa-lens-export" or ((hsPkgs.pkgs-errors).buildDepError "papa-lens-export"))
          (hsPkgs."papa-lens-implement" or ((hsPkgs.pkgs-errors).buildDepError "papa-lens-implement"))
          (hsPkgs."papa-semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "papa-semigroupoids"))
          (hsPkgs."papa-semigroupoids-export" or ((hsPkgs.pkgs-errors).buildDepError "papa-semigroupoids-export"))
          (hsPkgs."papa-semigroupoids-implement" or ((hsPkgs.pkgs-errors).buildDepError "papa-semigroupoids-implement"))
          (hsPkgs."papa-x" or ((hsPkgs.pkgs-errors).buildDepError "papa-x"))
          (hsPkgs."papa-x-export" or ((hsPkgs.pkgs-errors).buildDepError "papa-x-export"))
          (hsPkgs."papa-x-implement" or ((hsPkgs.pkgs-errors).buildDepError "papa-x-implement"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }