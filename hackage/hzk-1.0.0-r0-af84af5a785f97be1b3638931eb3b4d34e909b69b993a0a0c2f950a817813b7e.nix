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
      specVersion = "1.16";
      identifier = { name = "hzk"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "DiegoSouza <dsouza@c0d3.xxx>";
      author = "DiegoSouza <dsouza@c0d3.xxx>";
      homepage = "http://github.com/dgvncsz0f/hzk";
      url = "";
      synopsis = "Haskell client library for Apache Zookeeper";
      description = "A haskell binding to Apache Zookeeper C library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."zookeeper_mt" or (errorHandler.sysDepError "zookeeper_mt"))
          ];
        buildable = true;
        };
      tests = {
        "test-zookeeper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          libs = [
            (pkgs."zookeeper_mt" or (errorHandler.sysDepError "zookeeper_mt"))
            ];
          buildable = true;
          };
        };
      };
    }