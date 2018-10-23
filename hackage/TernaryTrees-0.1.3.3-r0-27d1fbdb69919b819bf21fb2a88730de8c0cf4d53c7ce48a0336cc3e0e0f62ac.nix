{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "TernaryTrees";
        version = "0.1.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Mason (irc: Axman6) <axman6@gmail.com>";
      author = "Alex Mason";
      homepage = "";
      url = "";
      synopsis = "Efficient pure ternary tree Sets and Maps";
      description = "Ternary trees are an efficient structure often used for storing\nstrings for fast lookups. This package implements a generic tree\nfor storing lists of Ord instances, and a specialised String\nimplementation which is about 30% faster than the generic version.\n\nAn example program is provided what shows how to use the package\nas a dictionary program for spell checking, and how it can be\nused to serialise data with Don Stewart's Data.Binary package.\n\nFrom my testing, using the \\/usr\\/share\\/dict\\/words file on my system\n(over 230,000 words), inserting all words, checking they all exist\nin the tree, writing them to a binary file, reading them back in\nand checking the read in result is the same as the original takes\nslightly over 3 seconds using the StringSet. The written file is\nalso slightly smaller than the input (by over 40% in some cases).\n\nNew in this version:\n\n* (Added the empty function to TernaryMap's export list)\n\n* Moved datatype definitions into .Internal modules so that\ntesting can be performed, without needing to export their definitions in the\nmain modules.\n\n* Checked a lot of the source with HLint 1.6 and made some minor changes based on that ((mostly redundant brackets)).\n\n&#169; 2009 by Alex Mason (<http://random.axman6.com/blog/>). BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "TernaryTrees" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "tdict" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }