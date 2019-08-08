{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasbolt"; version = "0.1.3.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Pavel Yakovlev";
      maintainer = "pavel@yakovlev.me";
      author = "Pavel Yakovlev, Martin Heuschober";
      homepage = "https://github.com/zmactep/hasbolt#readme";
      url = "";
      synopsis = "Haskell driver for Neo4j 3+ (BOLT protocol)";
      description = "Haskell driver for Neo4j 3+ (BOLT protocol).\n\nThe package covers:\n\n-Data serialization and deserialization\n\n-Nodes, relationships and paths support\n\n-Cypher queries and responses\n\n-Authentification\n\n-TLS/SSL connection\n\nThe code was tested with neo4j versions 3.0 — 3.4 and GrapheneDB service";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.connection)
          (hsPkgs.data-default)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.6") (hsPkgs.contravariant);
        };
      tests = {
        "hasbolt-test" = {
          depends = [
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