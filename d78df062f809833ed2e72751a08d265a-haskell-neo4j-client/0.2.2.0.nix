{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "haskell-neo4j-client";
        version = "0.2.2.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Antoni Silvestre";
      maintainer = "antoni.silvestre@gmail.com";
      author = "Antoni Silvestre";
      homepage = "https://github.com/asilvestre/haskell-neo4j-rest-client";
      url = "";
      synopsis = "A Haskell neo4j client";
      description = "Library to interact with Neo4j databases. For now, its API covers basic operations for nodes, relationships, labels\nand indexes and provides calls to use these in batch mode.\n\nBasic support for Cypher implemented\n\nAll code has been tested with Neo4j version 2.0.3";
      buildType = "Simple";
    };
    components = {
      "haskell-neo4j-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
          (hsPkgs.HTTP)
          (hsPkgs.lifted-base)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test-haskell-neo4j-rest-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.HUnit)
            (hsPkgs.Cabal)
            (hsPkgs.text)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.resourcet)
            (hsPkgs.data-default)
            (hsPkgs.transformers)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.scientific)
            (hsPkgs.unordered-containers)
            (hsPkgs.HTTP)
            (hsPkgs.lifted-base)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }