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
      identifier = { name = "dependent-monoidal-map"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Data.Dependent.Map variant that appends conflicting entries when merging maps instead of discarding one side of the conflict.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."constraints-extras" or (errorHandler.buildDepError "constraints-extras"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."dependent-sum-aeson-orphans" or (errorHandler.buildDepError "dependent-sum-aeson-orphans"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
        ];
        buildable = true;
      };
    };
  }