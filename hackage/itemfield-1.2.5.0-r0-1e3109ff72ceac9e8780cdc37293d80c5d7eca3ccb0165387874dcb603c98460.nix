{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]) ++ [
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          ];
        buildable = true;
        };
      exes = {
        "bookcase" = {
          depends = ([
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."itemfield" or (errorHandler.buildDepError "itemfield"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ [ (hsPkgs."brick" or (errorHandler.buildDepError "brick")) ];
          buildable = if !flags.examples then false else true;
          };
        "workreport" = {
          depends = ([
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."itemfield" or (errorHandler.buildDepError "itemfield"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (if flags.base49
            then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              ])) ++ [
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "test_itemfield" = {
          depends = ([
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ [ (hsPkgs."brick" or (errorHandler.buildDepError "brick")) ];
          buildable = true;
          };
        "test_layout" = {
          depends = ([
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ [ (hsPkgs."brick" or (errorHandler.buildDepError "brick")) ];
          buildable = true;
          };
        };
      };
    }