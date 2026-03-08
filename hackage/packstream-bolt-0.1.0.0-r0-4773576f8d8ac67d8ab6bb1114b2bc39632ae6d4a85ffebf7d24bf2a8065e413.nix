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
    flags = { dev = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "packstream-bolt"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2023-2026 philippedev101";
      maintainer = "philippedev101@gmail.com";
      author = "philippedev101";
      homepage = "https://github.com/philippedev101/packstream#readme";
      url = "";
      synopsis = "PackStream binary serialization format";
      description = "Implementation of the PackStream binary serialization format,\nused as the wire format by Neo4j's BOLT protocol.\nSimilar to MessagePack but with additional structure types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."int-cast" or (errorHandler.buildDepError "int-cast"))
          (hsPkgs."persist" or (errorHandler.buildDepError "persist"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }