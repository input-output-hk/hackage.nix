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
    flags = {
      examples = true;
      brick017 = true;
      brick016 = true;
      brick015 = true;
      base48 = true;
      base49 = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "itemfield"; version = "1.2.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Kevin Quick, 2013-2017";
      maintainer = "quick@sparq.org";
      author = "Kevin Quick <quick@sparq.org>";
      homepage = "";
      url = "";
      synopsis = "A brick Widget for selectable summary of many elements on a terminal";
      description = "This module provides a brick Widget that can be used with the brick\npackage to handle situations where there are lots of items to\nrepresent to the user along with a corresponding state for each\nitem.  One example of where the itemfield would be used is if there\nare too many elements to reasonably show in a List widget, if those\nelements are divided into groups, and if some status needs to be\nshown for each element.\n\nIn addition, the user can use the cursor keys and space bar to mark\none or more items (presumably so other code can get the list of\nmarked elements and perform a state-changing operation).\n\nThere are two example programs built when the examples flag is True\n(the default): bookcase and workreport.  Running these applications\nshould give a better idea of what the itemfield widget is and how it\ncan be used.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."vty" or (buildDepError "vty"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
          (hsPkgs."brick" or (buildDepError "brick"))
          ];
        buildable = true;
        };
      exes = {
        "bookcase" = {
          depends = ([
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."itemfield" or (buildDepError "itemfield"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
            (hsPkgs."brick" or (buildDepError "brick"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "workreport" = {
          depends = ([
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."itemfield" or (buildDepError "itemfield"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (if flags.base49
            then [ (hsPkgs."base" or (buildDepError "base")) ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ])) ++ [ (hsPkgs."brick" or (buildDepError "brick")) ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "test_itemfield" = {
          depends = ([
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
            (hsPkgs."brick" or (buildDepError "brick"))
            ];
          buildable = true;
          };
        "test_layout" = {
          depends = ([
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
            (hsPkgs."brick" or (buildDepError "brick"))
            ];
          buildable = true;
          };
        };
      };
    }