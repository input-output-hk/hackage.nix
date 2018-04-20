{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TernaryTrees";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alex Mason (irc: Axman6) <axman6@gmail.com>";
        author = "Alex Mason";
        homepage = "";
        url = "";
        synopsis = "Efficient pure ternary tree Sets and Maps";
        description = "Ternary trees are an efficient structure often used for storing\nstrings for fast lookups. This package implements a generic tree\nfor storing lists of Ord instances, and a specialised String\nimplementation which is about 30% faster than the generic version.\n\nAn example program is provided what shows how to use the package\nas a dictionary program for spell checking, and how it can be\nused to serialise data with Don Stewart's Data.Binary package.\n\nFrom my testing, using the \\/usr\\/share\\/dict\\/words file on my system\n(over 230,000 words), inserting all words, checking they all exist\nin the tree, writing them to a binary file, reading them back in\nand checking the read in result is the same as the original takes\nslightly over 3 seconds using the StringSet. The written file is\nalso slightly smaller than the input (by over 40% in some cases).\n\nNew in this version:\n\n* First major interface change since the first release... (less than\n24 hours ago).\n\n* Changed many function names to match those in Data.[Map,Set] to\nprovide a more familiar interface.\n\n* Added a Functor instance for TernaryMap.\n\n* Added `empty` and `null` functions to all types, and `elems`\nto TernaryMap.\n\n&#169; 2009 by Alex Mason (<http://axman6.homeip.net/blog/>). BSD3 license.";
        buildType = "Simple";
      };
      components = {
        TernaryTrees = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.binary
          ];
        };
        exes = {
          tdict = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }