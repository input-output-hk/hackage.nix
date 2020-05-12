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
      identifier = { name = "wai-middleware-caching"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Yann Esposito";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme";
      url = "";
      synopsis = "WAI Middleware to cache things";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
        buildable = true;
        };
      tests = {
        "wai-middleware-caching-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai-middleware-caching" or (errorHandler.buildDepError "wai-middleware-caching"))
            ];
          buildable = true;
          };
        };
      };
    }