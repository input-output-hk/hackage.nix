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
      specVersion = "1.8";
      identifier = { name = "entangle"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "leonardo.taglialegne@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An application (and library) to convert quipper circuits into Qpmc models.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quipper-core" or (errorHandler.buildDepError "quipper-core"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "entangle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."entangle" or (errorHandler.buildDepError "entangle"))
            (hsPkgs."quipper-core" or (errorHandler.buildDepError "quipper-core"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            ];
          buildable = true;
          };
        };
      };
    }