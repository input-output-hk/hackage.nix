{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TernaryTrees";
          version = "0.0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alex Mason (irc: Axman6) <axman6@gmail.com>";
        author = "Alex Mason";
        homepage = "";
        url = "";
        synopsis = "Efficient pure ternary tree Sets and Maps";
        description = "Ternary trees are an efficient structure often used for storing\nstrings for fast lookups. This package implements a generic tree\nfor storing lists of Ord instances, and a specialised String\nimplementation which is about 30% faster than the generic version.\\\nAn example program is provided what shows how to use the package\nas a dictionary program for spell checking, and how it can be\nused to serialise data with Don Stewart's Data.Binary package.\\\nFrom my testing, using the /usr/shart/dict/words file on my system\n(over 230,000 words), inserting all words, checking they all exist\nin the tree, writing them to a binary file, reading them back in\nand checking the read in result is the same as the original takes\nslightly over 3 seconds using the StringSet. The written file is\nalso slightly smaller than the input (by about 10% for shuffled data,\nand 7% for in order data).\\\nNew in this version: \\\n\\\n* Added Data.Map.TernaryMap\\\n* (Hopefully fixed this .cabal file)";
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