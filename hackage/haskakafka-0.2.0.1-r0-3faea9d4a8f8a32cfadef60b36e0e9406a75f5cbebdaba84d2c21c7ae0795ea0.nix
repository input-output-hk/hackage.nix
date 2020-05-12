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
      identifier = { name = "haskakafka"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
      author = "Thomas Dimson <tdimson@cs.stanford.edu>";
      homepage = "http://github.com/cosbynator/haskakafka";
      url = "";
      synopsis = "Kafka bindings for Haskell";
      description = "Use Apache Kafka in Haskell through the librdkafka\nC library. The library is preliminary but fully\nfunctional.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."rdkafka" or (errorHandler.sysDepError "rdkafka")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskakafka" or (errorHandler.buildDepError "haskakafka"))
            ];
          buildable = true;
          };
        };
      };
    }