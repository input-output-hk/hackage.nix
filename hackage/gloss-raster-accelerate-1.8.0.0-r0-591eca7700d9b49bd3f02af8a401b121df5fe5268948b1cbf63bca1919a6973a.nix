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
    flags = { cuda = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gloss-raster-accelerate"; version = "1.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tmcdonell@cse.unsw.edu.au";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Parallel rendering of raster images using Accelerate";
      description = "Parallel rendering of raster images using Accelerate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gloss-accelerate" or (errorHandler.buildDepError "gloss-accelerate"))
          ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"));
        buildable = true;
        };
      };
    }