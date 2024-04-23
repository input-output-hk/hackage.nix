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
      specVersion = "1.2";
      identifier = { name = "HOpenCV"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A binding for the OpenCV computer vision library";
      description = "Initial version with very limited bindings to OpenCV";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = [
          (pkgs."cv" or (errorHandler.sysDepError "cv"))
          (pkgs."highgui" or (errorHandler.sysDepError "highgui"))
        ];
        buildable = true;
      };
      exes = {
        "test-hopencv" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [
            (pkgs."cv" or (errorHandler.sysDepError "cv"))
            (pkgs."highgui" or (errorHandler.sysDepError "highgui"))
          ];
          buildable = true;
        };
      };
    };
  }