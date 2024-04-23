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
    flags = { use-cbits = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "token-bucket"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "https://github.com/haskell-hvr/token-bucket";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/haskell-hvr/token-bucket";
      url = "";
      synopsis = "Rate limiter using lazy bucket algorithm";
      description = "This package provides a variant of a [Token Bucket](https://en.wikipedia.org/wiki/Token_bucket)\nor [Leaky Bucket](https://en.wikipedia.org/wiki/Leaky_bucket) rate-limiting algorithm optimised for low overhead.\n\nThe rate-limiting variant implemented by this package is heavily inspired by the algorithm described in\n<https://web.archive.org/web/20120808023806/http://ksdlck.com/post/17418037348/rate-limiting-at-webscale-lazy-leaky-buckets \"Rate Limiting at Webscale: Lazy Leaky Buckets\">.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (!flags.use-cbits) (hsPkgs."time" or (errorHandler.buildDepError "time"));
        buildable = true;
      };
      tests = {
        "test-tb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."token-bucket" or (errorHandler.buildDepError "token-bucket"))
          ];
          buildable = true;
        };
      };
    };
  }