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
      specVersion = "1.10";
      identifier = { name = "profunctor-optics"; version = "0.0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris McKinlay";
      maintainer = "Chris McKinlay";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/profunctor-optics";
      url = "";
      synopsis = "An optics library compatible with the typeclasses in 'profunctors'.";
      description = "This package provides utilities for creating and manipulating profunctor-based optics. Some highlights:\n\nFull complement of isos, prisms, lenses, grates, affines, traversals, cotraversals, views, setters, folds, and more.\n\nComposable indexed or co-indexed variants of most of the above.\n\nCompact & straight-forward implementation. No inscrutable internal modules, lawless or otherwise ancillary typeclasses, or heavy type-level machinery.\n\nFully interoperable. All that is required to create optics (standard, indexable, or co-indexable) is the `profunctors` package. Optics compose with (.) from `Prelude` as is typical. If you want to provide profunctor optics for your own types in your own libraries, you can do so without incurring a dependency on this package. Conversions to & from the Van Laarhoven representations are provided for each optic type.\n\nWell-documented properties and exportable predicates for testing your own optics.\n\nSee the <https://github.com/cmk/profunctor-optics/blob/master/profunctor-optics/README.md Readme> file for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."connections" or (buildDepError "connections"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."newtype-generics" or (buildDepError "newtype-generics"))
          (hsPkgs."profunctor-arrows" or (buildDepError "profunctor-arrows"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."rings" or (buildDepError "rings"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          ];
        buildable = true;
        };
      exes = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."ilist" or (buildDepError "ilist"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."profunctor-optics" or (buildDepError "profunctor-optics"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."connections" or (buildDepError "connections"))
            (hsPkgs."profunctor-optics" or (buildDepError "profunctor-optics"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }