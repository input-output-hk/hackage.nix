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
      specVersion = "3.6";
      identifier = { name = "A-gent"; version = "0.11.0.0"; };
      license = "(SSPL-1.0 OR AGPL-3.0-only)";
      copyright = "(c) 2026 SPISE MISU ApS";
      maintainer = "SPISE MISU <mail+hackage@spisemisu.com>";
      author = "SPISE MISU";
      homepage = "https://a-gent.org";
      url = "";
      synopsis = "Polite & well educated LLM agent with excellent manners that always behaves well";
      description = "Polite and well educated LLM agent with excellent manners that always behaves well";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }