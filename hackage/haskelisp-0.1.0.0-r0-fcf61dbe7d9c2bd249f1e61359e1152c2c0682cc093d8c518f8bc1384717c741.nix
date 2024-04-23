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
      identifier = { name = "haskelisp"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2016 Takenari Shinohara";
      maintainer = "takenari.shinohara@gmail.com";
      author = "Takenari Shinohara";
      homepage = "http://github.com/githubuser/haskelisp#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
        ];
        buildable = true;
      };
    };
  }