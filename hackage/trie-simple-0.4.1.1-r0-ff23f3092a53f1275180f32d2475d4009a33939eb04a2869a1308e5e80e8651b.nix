{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "trie-simple";
        version = "0.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "";
      url = "";
      synopsis = "Simple Map-based Trie";
      description = "Trie data structure `TMap` to hold mapping from list of characters to\nsomething, i.e. isomorphic to `Map [c] v`.\nIt is more efficient to query compared to `Map`. Also, it supports extra\noperation like prefix matching.\nThis package also contains `TSet`, which is isomorphic to `Set` of lists of\ncharacters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "trie-simple-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.trie-simple)
          ];
        };
      };
      benchmarks = {
        "trie-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.vector)
            (hsPkgs.mwc-random)
            (hsPkgs.trie-simple)
          ];
        };
      };
    };
  }