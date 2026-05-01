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
    flags = { impure = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "natskell"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "sam@whiteteam.co.uk";
      author = "samisagit";
      homepage = "";
      url = "";
      synopsis = "A NATS client library written in Haskell";
      description = "Please see the README on GitHub at <https://github.com/samisagit/natskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."natskell".components.sublibs.natskell-internal or (errorHandler.buildDepError "natskell:natskell-internal"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        pkgconfig = [
          (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
        ];
        buildable = true;
      };
      sublibs = {
        "natskell-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          pkgconfig = [
            (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
          ];
          buildable = true;
        };
        "test-common" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          pkgconfig = [
            (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natskell".components.sublibs.natskell-internal or (errorHandler.buildDepError "natskell:natskell-internal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          pkgconfig = [
            (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
          ];
          buildable = true;
        };
        "fuzz-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natskell".components.sublibs.natskell-internal or (errorHandler.buildDepError "natskell:natskell-internal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          pkgconfig = [
            (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
          ];
          buildable = true;
        };
        "integration-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natskell" or (errorHandler.buildDepError "natskell"))
            (hsPkgs."natskell".components.sublibs.test-common or (errorHandler.buildDepError "natskell:test-common"))
            (hsPkgs."port-utils" or (errorHandler.buildDepError "port-utils"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          pkgconfig = [
            (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "parser-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natskell".components.sublibs.natskell-internal or (errorHandler.buildDepError "natskell:natskell-internal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          pkgconfig = [
            (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
          ];
          buildable = true;
        };
      };
    };
  }