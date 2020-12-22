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
      specVersion = "1.12";
      identifier = { name = "ratelimiter"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Alexander Thiemann <mail@thiemann.at>";
      maintainer = "Alexander Thiemann <mail@thiemann.at>";
      author = "Alexander Thiemann <mail@thiemann.at>";
      homepage = "https://github.com/agrafix/ratelimiter#readme";
      url = "";
      synopsis = "In-memory rate limiter";
      description = "An in-memory rate limiter implementation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "ratelimiter-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ratelimiter" or (errorHandler.buildDepError "ratelimiter"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }