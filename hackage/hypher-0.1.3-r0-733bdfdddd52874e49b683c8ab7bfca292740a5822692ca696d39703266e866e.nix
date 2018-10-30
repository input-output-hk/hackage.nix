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
        name = "hypher";
        version = "0.1.3";
      };
      license = "MIT";
      copyright = "(c) 2015 Jeff Taggart";
      maintainer = "jeff@jetaggart.com";
      author = "Antoni Silvestre & Jeff Taggart";
      homepage = "https://github.com/zoetic-community/hyper.git";
      url = "";
      synopsis = "A Haskell neo4j client";
      description = "Library to interact with Neo4j databases.\n\nThis library covers:\n\n-Cypher transactions\n\n-CRUD operations for nodes, relationships, labels and indexes\n\n-Batch calls for CRUD operations.\n\n\nAll code has been tested with Neo4j versions 2.0.3 and 2.1.5.\nThis is a fork of: http://hackage.haskell.org/package/haskell-neo4j-client. Attempting to bring it up to date.\nOnly supports new Transactional Cypher REST api.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test-hypher" = {
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
            (hsPkgs.transformers-base)
            (hsPkgs.HTTP)
            (hsPkgs.lifted-base)
            (hsPkgs.hashable)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }