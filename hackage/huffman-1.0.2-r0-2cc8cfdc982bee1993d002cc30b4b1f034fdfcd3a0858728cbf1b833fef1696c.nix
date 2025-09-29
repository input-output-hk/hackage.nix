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
      specVersion = "3.0";
      identifier = { name = "huffman"; version = "1.0.2"; };
      license = "BSD-2-Clause";
      copyright = "2010, Maxime Henrion";
      maintainer = "Maxime Henrion <mhenrion@gmail.com>";
      author = "Maxime Henrion";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell implementation of the Huffman encoding algorithm";
      description = "A simple and pure Haskell implementation of the Huffman encoding\nalgorithm.\n.\nThe @huffman@ function provides the original O(n log n) algorithm\nimplemented with a priority queue.  If the input symbols are sorted\nby probability, the O(n) @huffmanSorted@ function can be used instead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
        ];
        buildable = true;
      };
    };
  }