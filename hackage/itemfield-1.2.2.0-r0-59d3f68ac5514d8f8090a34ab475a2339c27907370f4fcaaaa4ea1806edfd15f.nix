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
      brick015plus = true;
      base48 = true;
      base49 = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "itemfield"; version = "1.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Kevin Quick, 2013-2016";
      maintainer = "quick@sparq.org";
      author = "Kevin Quick <quick@sparq.org>";
      homepage = "";
      url = "";
      synopsis = "A brick Widget for selectable summary of many elements on a terminal";
      description = "This module provides a brick Widget that can be used with the\nbrick package to handle situations where there are lots of items\nto represent to the user along with a corresponding state for each\nitem.  In addition, the user should be able to use the cursor\nkeys and space bar to mark one or more items (presumably so other\ncode can get the list of marked elements and perform a\nstate-changing operation).\n\n* 0.1.0.0  -- initial version\n\n* 0.2.0.0  -- more key events: Shift+Arrow to mark/unmark with move\n\n* 0.2.0.1  -- more key events: G=toggle group, A=toggle all, !=mrk bad; add helpMsg\n\n* 0.3.0.0  -- rename from StateFieldSelector to ItemField\n\n* 0.3.1.0  -- add + key selector to select all successful targets\n\n* 1.0.0.0  -- update from vty-ui to brick\n\n* 1.1.0.0  -- add support for 's' and 'f' keys and mouse events\n\n* 1.2.0.0  -- intermediary state is \"Pending\"\n\n* 1.2.1.0  -- added compatibility for older distributions\n\n* 1.2.2.0  -- added compatibility for GHC7.10";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."vty" or (buildDepError "vty"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
          (hsPkgs."brick" or (buildDepError "brick"))
          ];
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
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
            (hsPkgs."brick" or (buildDepError "brick"))
            ];
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
          };
        };
      };
    }