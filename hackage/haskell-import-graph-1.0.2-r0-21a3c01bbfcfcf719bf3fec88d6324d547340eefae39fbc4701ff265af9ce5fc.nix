{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-import-graph";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "© ncaq";
      maintainer = "ncaq@ncaq.net";
      author = "ncaq";
      homepage = "https://github.com/ncaq/haskell-import-graph.git#readme";
      url = "";
      synopsis = "create haskell import graph for graphviz";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haskell-import-graph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.ghc)
          (hsPkgs.graphviz)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "haskell-import-graph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-import-graph)
          ];
        };
      };
    };
  }