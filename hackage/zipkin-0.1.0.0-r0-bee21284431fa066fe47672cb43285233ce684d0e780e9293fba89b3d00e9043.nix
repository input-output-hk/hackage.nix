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
      identifier = { name = "zipkin"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-zipkin";
      url = "";
      synopsis = "Zipkin-style request tracing monad";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      };
    }