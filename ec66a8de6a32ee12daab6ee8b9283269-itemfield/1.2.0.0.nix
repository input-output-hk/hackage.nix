{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      brick015plus = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "itemfield";
          version = "1.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Kevin Quick, 2013-2016";
        maintainer = "quick@sparq.org";
        author = "Kevin Quick <quick@sparq.org>";
        homepage = "";
        url = "";
        synopsis = "A brick Widget for selectable summary of many elements on a terminal";
        description = "This module provides a brick Widget that can be used with the\nbrick package to handle situations where there are lots of items\nto represent to the user along with a corresponding state for each\nitem.  In addition, the user should be able to use the cursor\nkeys and space bar to mark one or more items (presumably so other\ncode can get the list of marked elements and perform a\nstate-changing operation).\n\n* 0.1.0.0  -- initial version\n\n* 0.2.0.0  -- more key events: Shift+Arrow to mark/unmark with move\n\n* 0.2.0.1  -- more key events: G=toggle group, A=toggle all, !=mrk bad; add helpMsg\n\n* 0.3.0.0  -- rename from StateFieldSelector to ItemField\n\n* 0.3.1.0  -- add + key selector to select all successful targets\n\n* 1.0.0.0  -- update from vty-ui to brick\n\n* 1.1.0.0  -- add support for 's' and 'f' keys and mouse events\n\n* 1.2.0.0  -- intermediary state is \"Pending\"";
        buildType = "Simple";
      };
      components = {
        itemfield = {
          depends  = [
            hsPkgs.base
            hsPkgs.vty
            hsPkgs.text
            hsPkgs.microlens
          ] ++ [ hsPkgs.brick ];
        };
        exes = {
          bookcase = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.itemfield
              hsPkgs.data-default
            ] ++ [ hsPkgs.brick ];
          };
          workreport = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.itemfield
              hsPkgs.data-default
              hsPkgs.random
            ] ++ [ hsPkgs.brick ];
          };
        };
        tests = {
          test_itemfield = {
            depends  = [
              hsPkgs.base
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
            ] ++ [ hsPkgs.brick ];
          };
          test_layout = {
            depends  = [
              hsPkgs.base
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
            ] ++ [ hsPkgs.brick ];
          };
        };
      };
    }