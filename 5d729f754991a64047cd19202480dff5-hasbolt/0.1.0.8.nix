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
      specVersion = "1.10";
      identifier = {
        name = "hasbolt";
        version = "0.1.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pavel Yakovlev";
      maintainer = "pavel@yakovlev.me";
      author = "Pavel Yakovlev, Martin Heuschober";
      homepage = "https://github.com/zmactep/hasbolt#readme";
      url = "";
      synopsis = "Haskell driver for Neo4j 3+ (BOLT protocol)";
      description = "Haskell driver for Neo4j 3+ (BOLT protocol).\n\nThe package covers:\n\n-Data serialization and deserialization\n\n-Nodes, relationships and paths support\n\n-Cypher queries and responses\n\n-Authentification\n\nThe code was tested with neo4j versions 3.0 and 3.1";
      buildType = "Simple";
    };
    components = {
      "hasbolt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.data-default)
          (hsPkgs.hex)
        ];
      };
      tests = {
        "hasbolt-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hasbolt)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.hex)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }