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
      identifier = { name = "haskakafka"; version = "0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
      author = "Thomas Dimson <tdimson@cs.stanford.edu>";
      homepage = "http://github.com/cosbynator/haskakafka";
      url = "";
      synopsis = "Kafka bindings for Haskell";
      description = "Use Apache Kafka in Haskell through the librdkafka\nC library.";
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
        libs = [ (pkgs."rdkafka" or (errorHandler.sysDepError "rdkafka")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
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