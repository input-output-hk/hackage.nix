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
      specVersion = "1.6";
      identifier = { name = "rivers"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2011, 2012 Drew Day";
      maintainer = "Drew Day <drewday@gmail.com>";
      author = "Drew Day <drewday@gmail.com>";
      homepage = "https://github.com/d-rive/rivers";
      url = "";
      synopsis = "Rivers are like Streams, but different.";
      description = "This library intends to unify, classify, demonstrate, and promote\nthe use, abuse, and exploration of Streams and other infinite (co)data\ntypes. Many other languages have substantial feature overlap with Haskell,\nbut Streams and friends proivde excellent demonstrations of Haskell features\nlike laziness.\n\nRivers are not currently defined in this package, because they are still ill-defined.\nThe goal of this package in the meantime is, therefore, is to focus on Streams.\n\nAnother goal of this package is to demonstrate the ecosystem of Rivers (and Streams),\nhow identical (and indeed sometimes isomorphic) streams can be constucted in many\ndifferent ways. OEIS (<http://www.oeis.org>) is used to verify the correctness\nof numeric streams, where possible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."oeis" or (buildDepError "oeis"))
          ];
        };
      };
    }