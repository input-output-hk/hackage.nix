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
        name = "graph-generators";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ukoehler@techoverflow.net";
      author = "Uli Köhler";
      homepage = "https://github.com/ulikoehler/graph-random";
      url = "";
      synopsis = "Functions for generating structured or random FGL graphs";
      description = "Generators for graphs.\nSupports classic (constant-sized) graphs, deterministic Generators\nand different random graph generators, based on mwc-random.\nThis library uses a library-agnostic and space-efficient graph\nrepresentation. Combinators are provided to convert said representation\nto other graph representations (currently only FGL, see 'Data.Graph.Generators.FGL')\nNote that this library is in its early development stages.\nDon't use it for production code without checking the correctness\nof the algorithm implementation..";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mwc-random)
          (hsPkgs.fgl)
          (hsPkgs.multiset)
        ];
      };
      tests = {
        "test-graph-generators" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.containers)
            (hsPkgs.fgl)
            (hsPkgs.QuickCheck)
            (hsPkgs.multiset)
            (hsPkgs.mwc-random)
          ];
        };
      };
    };
  }