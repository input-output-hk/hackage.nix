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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HiggsSet"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "http://github.com/lpeterse/HiggsSet";
      url = "";
      synopsis = "A multi-index set with advanced query capabilites";
      description = "This package allows you to define several typesafe\nindizes on a set. You can query the set with an SQL-like\nset of query operations.\nThis package was developed as a successor of 'Data.IxSet'.\nIt is meant to be more space efficient, since it uses\n'Data.IntSet' and 'Data.TrieMap' as an underlying represenation.\nIt also has the potential to be fast, since indizes don't\nneed to be recalculated after each query and since\nPatricia trees perform quite well for intersection and union.\nThis package comes without warranties. Although I use it\nwithout problems in a large web project it is neither properly\ntested nor benchmarked.\nPatches or suggestions for improvement are welcome. If you like,\nstart an issue on github.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."TrieMap" or (errorHandler.buildDepError "TrieMap"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
        ];
        buildable = true;
      };
    };
  }