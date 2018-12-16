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
        name = "haskell-import-graph";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 ncaq";
      maintainer = "ncaq@ncaq.net";
      author = "ncaq";
      homepage = "";
      url = "";
      synopsis = "create haskell import graph for graphviz";
      description = "create haskell import graph for graphviz\nHow to:\n> cabal build\n> haskell-import-graph\nOr,\n> haskell-import-graph dist/build/foo/foo-tmp/bar.hi";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-import-graph)
          ];
        };
      };
    };
  }