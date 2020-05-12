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
      identifier = { name = "haskakafka"; version = "1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
      author = "Thomas Dimson <tdimson@cs.stanford.edu>";
      homepage = "http://github.com/cosbynator/haskakafka";
      url = "";
      synopsis = "Kafka bindings for Haskell";
      description = "Apache Kafka bindings backed by the librdkafka\nC library. This implies full consumer and producer\nsupport for Kafka 0.9.x.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        pkgconfig = [
          (pkgconfPkgs."rdkafka" or (errorHandler.pkgConfDepError "rdkafka"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskakafka" or (errorHandler.buildDepError "haskakafka"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "basic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskakafka" or (errorHandler.buildDepError "haskakafka"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskakafka" or (errorHandler.buildDepError "haskakafka"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            ];
          buildable = true;
          };
        };
      };
    }