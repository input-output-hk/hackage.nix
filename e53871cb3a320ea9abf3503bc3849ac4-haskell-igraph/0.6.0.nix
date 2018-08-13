{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      graphics = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.24";
      identifier = {
        name = "haskell-igraph";
        version = "0.6.0";
      };
      license = "MIT";
      copyright = "(c) 2016-2018 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Haskell interface of the igraph library.";
      description = "igraph<\"http://igraph.org/c/\"> is a library for creating\nand manipulating large graphs. This package provides the Haskell\ninterface of igraph.";
      buildType = "Simple";
    };
    components = {
      "haskell-igraph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.cereal)
          (hsPkgs.colour)
          (hsPkgs.conduit)
          (hsPkgs.data-ordlist)
          (hsPkgs.primitive)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.hxt)
          (hsPkgs.split)
          (hsPkgs.singletons)
        ] ++ pkgs.lib.optionals (_flags.graphics) [
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-cairo)
        ];
        libs = [ (pkgs.igraph) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-igraph)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.data-ordlist)
            (hsPkgs.matrices)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.random)
          ];
        };
      };
    };
  }