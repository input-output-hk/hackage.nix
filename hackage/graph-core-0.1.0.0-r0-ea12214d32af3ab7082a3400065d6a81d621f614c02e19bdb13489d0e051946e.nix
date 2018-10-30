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
      specVersion = "1.8";
      identifier = {
        name = "graph-core";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 factis research GmbH";
      maintainer = "Alexander Thiemann <thiemann@cp-med.com>";
      author = "Stefan Wehr <wehr@cp-med.com>, David Leuschner <leuschner@cp-med.com>, Alexander Thiemann <thiemann@cp-med.com>";
      homepage = "https://github.com/factisresearch/graph-core";
      url = "";
      synopsis = "Fast, memory efficient and persistent graph implementation";
      description = "A small package providing a powerful and easy to use Haskell graph implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.safe)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.safecopy)
        ];
      };
      tests = {
        "graph-core-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
            (hsPkgs.safe)
            (hsPkgs.deepseq)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.HTF)
          ];
        };
      };
    };
  }