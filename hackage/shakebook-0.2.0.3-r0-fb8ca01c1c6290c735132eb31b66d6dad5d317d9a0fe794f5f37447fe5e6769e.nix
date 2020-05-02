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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "shakebook"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Shake-based technical documentation generator; HTML & PDF";
      description = "Shakebook is a documentation generator aimed at covering all the bases for mathematical, technical and scientific diagrams and typesetting. Shakebook provides combinators for taking markdown files and combining them into documents, but allowing the user to control how. Shakebook provides general combinators for templating single pages, cofree comonads for representing tables of contents, and zipper comonads for representing pagers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."comonad-extras" or (buildDepError "comonad-extras"))
          (hsPkgs."doctemplates" or (buildDepError "doctemplates"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."feed" or (buildDepError "feed"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
          (hsPkgs."relude" or (buildDepError "relude"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."shake" or (buildDepError "shake"))
          (hsPkgs."slick" or (buildDepError "slick"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text-time" or (buildDepError "text-time"))
          ];
        buildable = true;
        };
      exes = {
        "shakebook-simple-blog" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."comonad-extras" or (buildDepError "comonad-extras"))
            (hsPkgs."doctemplates" or (buildDepError "doctemplates"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."shakebook" or (buildDepError "shakebook"))
            (hsPkgs."slick" or (buildDepError "slick"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text-time" or (buildDepError "text-time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "shakebook-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."comonad-extras" or (buildDepError "comonad-extras"))
            (hsPkgs."doctemplates" or (buildDepError "doctemplates"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."shakebook" or (buildDepError "shakebook"))
            (hsPkgs."slick" or (buildDepError "slick"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."text-time" or (buildDepError "text-time"))
            ];
          buildable = true;
          };
        };
      };
    }