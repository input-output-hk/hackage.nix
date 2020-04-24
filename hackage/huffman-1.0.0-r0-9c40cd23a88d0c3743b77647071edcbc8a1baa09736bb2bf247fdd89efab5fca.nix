{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "huffman"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2010, Maxime Henrion";
      maintainer = "Maxime Henrion <mhenrion@gmail.com>";
      author = "Maxime Henrion";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell implementation of the Huffman encoding algorithm";
      description = "A simple and pure Haskell implementation of the Huffman encoding\nalgorithm.\n\nThe @huffman@ function provides the original O(n log n) algorithm\nimplemented with a priority queue.  If the input symbols are sorted\nby probability, the O(n) @huffmanSorted@ function can be used instead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
          ];
        buildable = true;
        };
      };
    }