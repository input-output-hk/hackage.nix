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
      identifier = { name = "predicate-typed"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2019, Grant Weyburne";
      maintainer = "Grant Weyburne <gbwey9@gmail.com>";
      author = "Grant Weyburne <gbwey9@gmail.com>";
      homepage = "https://github.com/gbwey/predicate-typed#readme";
      url = "";
      synopsis = "Predicates, Refinement types and Dsl";
      description = "Please see the README on GitHub at <https://github.com/gbwey/predicate-typed#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pcre-heavy" or (buildDepError "pcre-heavy"))
          (hsPkgs."pcre-light" or (buildDepError "pcre-light"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."these" or (buildDepError "these"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."tree-view" or (buildDepError "tree-view"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pcre-heavy" or (buildDepError "pcre-heavy"))
            (hsPkgs."pcre-light" or (buildDepError "pcre-light"))
            (hsPkgs."predicate-typed" or (buildDepError "predicate-typed"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tree-view" or (buildDepError "tree-view"))
            ];
          buildable = true;
          };
        "predicate-typed-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pcre-heavy" or (buildDepError "pcre-heavy"))
            (hsPkgs."pcre-light" or (buildDepError "pcre-light"))
            (hsPkgs."predicate-typed" or (buildDepError "predicate-typed"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tree-view" or (buildDepError "tree-view"))
            ];
          buildable = true;
          };
        };
      };
    }