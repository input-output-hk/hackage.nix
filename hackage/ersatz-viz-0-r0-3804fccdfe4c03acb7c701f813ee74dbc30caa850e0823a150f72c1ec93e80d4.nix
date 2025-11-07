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
      specVersion = "3.8";
      identifier = { name = "ersatz-viz"; version = "0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "";
      author = "Johannes Waldmann";
      homepage = "https://git.imn.htwk-leipzig.de/waldmann/ersatz-viz";
      url = "";
      synopsis = "draw circuit (DAG) for Ersatz.Bit";
      description = "draw circuit (DAG) for Ersatz.Bit\n.\nexample usage: see test/Works.hs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
        ];
        buildable = true;
      };
      tests = {
        "works" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
            (hsPkgs."ersatz-viz" or (errorHandler.buildDepError "ersatz-viz"))
          ];
          buildable = true;
        };
      };
    };
  }