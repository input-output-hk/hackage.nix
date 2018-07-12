{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = true;
      brick017 = true;
      brick016 = true;
      brick015 = true;
      base48 = true;
      base49 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "itemfield";
          version = "1.2.4.1";
        };
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
        "itemfield" = {
          depends  = ([
            hsPkgs.vty
            hsPkgs.text
            hsPkgs.microlens
            hsPkgs.data-default
          ] ++ [ hsPkgs.base ]) ++ [
            hsPkgs.brick
          ];
        };
        exes = {
          "bookcase" = {
            depends  = ([
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.itemfield
              hsPkgs.data-default
            ] ++ [ hsPkgs.base ]) ++ [
              hsPkgs.brick
            ];
          };
          "workreport" = {
            depends  = ([
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.itemfield
              hsPkgs.data-default
              hsPkgs.random
            ] ++ (if _flags.base49
              then [ hsPkgs.base ]
              else [
                hsPkgs.base
                hsPkgs.transformers
              ])) ++ [ hsPkgs.brick ];
          };
        };
        tests = {
          "test_itemfield" = {
            depends  = ([
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.data-default
            ] ++ [ hsPkgs.base ]) ++ [
              hsPkgs.brick
            ];
          };
          "test_layout" = {
            depends  = ([
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.data-default
            ] ++ [ hsPkgs.base ]) ++ [
              hsPkgs.brick
            ];
          };
        };
      };
    }