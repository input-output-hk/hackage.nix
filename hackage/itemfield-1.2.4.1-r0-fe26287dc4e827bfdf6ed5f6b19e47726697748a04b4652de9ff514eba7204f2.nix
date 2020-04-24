{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "itemfield"; version = "1.2.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Kevin Quick, 2013-2017";
      maintainer = "quick@sparq.org";
      author = "Kevin Quick <quick@sparq.org>";
      homepage = "";
      url = "";
      synopsis = "A brick Widget for selectable summary of many elements on a terminal";
      description = "This module provides a brick Widget that can be used with the brick\npackage to handle situations where there are lots of items to\nrepresent to the user along with a corresponding state for each\nitem.  One example of where the itemfield would be used is if there\nare too many elements to reasonably show in a List widget, if those\nelements are divided into groups, and if some status needs to be\nshown for each element.\nIn addition, the user can use the cursor keys and space bar to mark\none or more items (presumably so other code can get the list of\nmarked elements and perform a state-changing operation).\nThere are two example programs built when the examples flag is True\n(the default): bookcase and workreport.  Running these applications\nshould give a better idea of what the itemfield widget is and how it\ncan be used.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ]) ++ [
          (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
          ];
        buildable = true;
        };
      exes = {
        "bookcase" = {
          depends = ([
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."itemfield" or ((hsPkgs.pkgs-errors).buildDepError "itemfield"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]) ++ [
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "workreport" = {
          depends = ([
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."itemfield" or ((hsPkgs.pkgs-errors).buildDepError "itemfield"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (if flags.base49
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              ])) ++ [
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "test_itemfield" = {
          depends = ([
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]) ++ [
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            ];
          buildable = true;
          };
        "test_layout" = {
          depends = ([
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]) ++ [
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            ];
          buildable = true;
          };
        };
      };
    }