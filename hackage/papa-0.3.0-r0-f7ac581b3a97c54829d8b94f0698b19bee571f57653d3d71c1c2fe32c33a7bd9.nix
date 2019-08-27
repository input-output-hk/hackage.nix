let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."papa-base" or (buildDepError "papa-base"))
          (hsPkgs."papa-base-export" or (buildDepError "papa-base-export"))
          (hsPkgs."papa-base-implement" or (buildDepError "papa-base-implement"))
          (hsPkgs."papa-bifunctors" or (buildDepError "papa-bifunctors"))
          (hsPkgs."papa-bifunctors-export" or (buildDepError "papa-bifunctors-export"))
          (hsPkgs."papa-bifunctors-implement" or (buildDepError "papa-bifunctors-implement"))
          (hsPkgs."papa-lens" or (buildDepError "papa-lens"))
          (hsPkgs."papa-lens-export" or (buildDepError "papa-lens-export"))
          (hsPkgs."papa-lens-implement" or (buildDepError "papa-lens-implement"))
          (hsPkgs."papa-semigroupoids" or (buildDepError "papa-semigroupoids"))
          (hsPkgs."papa-semigroupoids-export" or (buildDepError "papa-semigroupoids-export"))
          (hsPkgs."papa-semigroupoids-implement" or (buildDepError "papa-semigroupoids-implement"))
          (hsPkgs."papa-x" or (buildDepError "papa-x"))
          (hsPkgs."papa-x-export" or (buildDepError "papa-x-export"))
          (hsPkgs."papa-x-implement" or (buildDepError "papa-x-implement"))
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        };
      };
    }