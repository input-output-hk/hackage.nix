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
      specVersion = "1.6";
      identifier = { name = "stringprep"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Pollard <porges@porg.es>";
      author = "George Pollard <porges@porg.es>";
      homepage = "";
      url = "";
      synopsis = "Implements the \"StringPrep\" algorithm";
      description = "Implements the \"StringPrep\" algorithm";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ranges" or (errorHandler.buildDepError "ranges"))
          (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }