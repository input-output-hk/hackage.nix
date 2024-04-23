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
      identifier = { name = "cache-polysemy"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Poscat";
      maintainer = "poscat@mail.poscat.moe";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/cache-polysemy#readme";
      url = "";
      synopsis = "cached hashmaps";
      description = "An polysemy interface for cached hashmaps and an interpreter implemented using <https://hackage.haskell.org/package/cache cache>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
        ];
        buildable = true;
      };
      tests = {
        "cache-polysemy-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
            (hsPkgs."cache-polysemy" or (errorHandler.buildDepError "cache-polysemy"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          ];
          buildable = true;
        };
      };
    };
  }