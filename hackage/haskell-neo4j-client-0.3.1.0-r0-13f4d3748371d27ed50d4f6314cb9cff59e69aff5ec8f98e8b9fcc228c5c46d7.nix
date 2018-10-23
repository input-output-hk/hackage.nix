{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "haskell-neo4j-client";
        version = "0.3.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Antoni Silvestre";
      maintainer = "antoni.silvestre@gmail.com";
      author = "Antoni Silvestre";
      homepage = "https://github.com/asilvestre/haskell-neo4j-rest-client";
      url = "";
      synopsis = "A Haskell neo4j client";
      description = "Library to interact with Neo4j databases.\n\nThis library covers:\n\n-Cypher transactions\n\n-CRUD operations for nodes, relationships, labels and indexes\n\n-Batch calls for CRUD operations.\n\n-Traversal API\n\nAll code has been tested with Neo4j versions 2.0.3, 2.1.5, 2.1.7, 2.2.0 and 2.2.1\n\n2.2.0 added authentication to the API this driver uses, this is not supported yet by this driver but it will be soon.\nIn the meantime you will have to disable it.";
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
          (hsPkgs.transformers-compat)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
          (hsPkgs.HTTP)
          (hsPkgs.lifted-base)
          (hsPkgs.hashable)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
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
            (hsPkgs.transformers-compat)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.scientific)
            (hsPkgs.unordered-containers)
            (hsPkgs.transformers-base)
            (hsPkgs.HTTP)
            (hsPkgs.lifted-base)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.network-uri)
          ];
        };
      };
    };
  }