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
      specVersion = "2.2";
      identifier = { name = "zoovisitor"; version = "0.2.6.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c)";
      maintainer = "mu@laxcat.xyz";
      author = "mu";
      homepage = "https://github.com/ZHaskell/zoovisitor";
      url = "";
      synopsis = "A haskell binding to Apache Zookeeper C library(mt) using Haskell Z project.";
      description = "Please see the README on Github at <https://github.com/ZHaskell/zoovisitor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
          ];
        libs = [
          (pkgs."zookeeper_mt" or (errorHandler.sysDepError "zookeeper_mt"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "zoovisitor-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
            (hsPkgs."zoovisitor" or (errorHandler.buildDepError "zoovisitor"))
            ];
          buildable = true;
          };
        };
      };
    }