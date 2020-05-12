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
      specVersion = "1.8";
      identifier = { name = "memcache"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 David Terei.";
      maintainer = "David Terei <code@davidterei.com>";
      author = "David Terei <code@davidterei.com>";
      homepage = "https://github.com/dterei/memcache-hs";
      url = "";
      synopsis = "A memcached client library.";
      description = "A client library for a memcached cluster. It is aimed at full binary protocol\nsupport, ease of use and speed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      tests = {
        "full" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
            ];
          buildable = true;
          };
        };
      };
    }