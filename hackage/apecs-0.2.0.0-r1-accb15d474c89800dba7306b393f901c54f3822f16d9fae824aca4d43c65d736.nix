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
      identifier = { name = "apecs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs#readme";
      url = "";
      synopsis = "A fast ECS for game engine programming";
      description = "A fast ECS for game engine programming";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."apecs" or (errorHandler.buildDepError "apecs"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            ];
          buildable = true;
          };
        "rts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."apecs" or (errorHandler.buildDepError "apecs"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "apecs-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."apecs" or (errorHandler.buildDepError "apecs"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            ];
          buildable = true;
          };
        };
      };
    }