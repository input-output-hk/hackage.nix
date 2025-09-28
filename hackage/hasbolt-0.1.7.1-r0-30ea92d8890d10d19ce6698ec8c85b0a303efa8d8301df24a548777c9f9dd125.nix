{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasbolt"; version = "0.1.7.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Pavel Yakovlev";
      maintainer = "pavel@yakovlev.me";
      author = "Pavel Yakovlev, Martin Heuschober";
      homepage = "https://github.com/zmactep/hasbolt#readme";
      url = "";
      synopsis = "Haskell driver for Neo4j 3+ (BOLT protocol)";
      description = "Haskell driver for Neo4j 3+ (BOLT protocol).\n\nThe package covers:\n\n-Data serialization and deserialization\n\n-Nodes, relationships and paths support\n\n-Cypher queries and responses\n\n-Transactions and error handling\n\n-Authentification\n\n-TLS/SSL connection\n\n-Bolt protocol version 3 initial support\n\nThe code was tested with neo4j versions 3.0 — 3.5 and GrapheneDB service";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.6") (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."fail" or (errorHandler.buildDepError "fail"));
        buildable = true;
      };
      tests = {
        "hasbolt-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasbolt" or (errorHandler.buildDepError "hasbolt"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "hasbolt-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hasbolt" or (errorHandler.buildDepError "hasbolt"))
          ];
          buildable = true;
        };
      };
    };
  }