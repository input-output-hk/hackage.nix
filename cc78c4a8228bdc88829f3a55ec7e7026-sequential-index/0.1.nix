{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sequential-index";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
        homepage = "https://github.com/aristidb/sequential-index";
        url = "";
        synopsis = "Sequential index numbers between 0.0 and 1.0 that allow arbitrarily inserting new numbers in between (for special containers).";
        description = "Sequential index numbers between 0.0 and 1.0 that allow arbitrarily inserting new numbers in between. They can possibly used for disk-based and other special containers, where adding a new element without changing the indexes of the other elements is important.\nConceptually, SequentialIndex denotes a path to an element in an imaginary binary tree. However, leafs can only be on the right side of their parent. I.e. the path must end with a '1' (or be the path to the root node, 0.0). 1.0 denotes the invalid node.";
        buildType = "Simple";
      };
      components = {
        sequential-index = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }