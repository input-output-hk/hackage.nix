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
      identifier = { name = "cerberus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Yann Esposito";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/cerberus#readme";
      url = "";
      synopsis = "Protect and control API access with cerberus";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))
          (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-reverse-proxy" or (errorHandler.buildDepError "http-reverse-proxy"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-middleware-throttle" or (errorHandler.buildDepError "wai-middleware-throttle"))
          (hsPkgs."wai-middleware-caching" or (errorHandler.buildDepError "wai-middleware-caching"))
          (hsPkgs."wai-middleware-caching-lru" or (errorHandler.buildDepError "wai-middleware-caching-lru"))
          (hsPkgs."wai-middleware-caching-redis" or (errorHandler.buildDepError "wai-middleware-caching-redis"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "cerberus" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"))
            (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."cerberus" or (errorHandler.buildDepError "cerberus"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cerberus-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cerberus" or (errorHandler.buildDepError "cerberus"))
            ];
          buildable = true;
          };
        };
      };
    }