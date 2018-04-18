{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "COrdering";
          version = "2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Adrian Hey 2004-2008";
        maintainer = "Adrian Hey http://homepages.nildram.co.uk/~ahey/em.png";
        author = "Adrian Hey";
        homepage = "";
        url = "";
        synopsis = "An algebraic data type similar to Prelude Ordering.";
        description = "Typically this is used as the return type of a combining comparison, which combines two\nvalues if they are deemed equal in some sense. Currently combining comparisons are used\nextensively by the AVL tree package (AvlTree).";
        buildType = "Simple";
      };
      components = {
        COrdering = {
          depends  = [ hsPkgs.base ];
        };
      };
    }