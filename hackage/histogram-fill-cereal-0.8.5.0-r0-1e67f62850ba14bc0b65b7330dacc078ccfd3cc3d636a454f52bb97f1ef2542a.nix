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
      identifier = { name = "histogram-fill-cereal"; version = "0.8.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov";
      homepage = "https://github.com/Shimuuar/histogram-fill/";
      url = "";
      synopsis = "Binary instances for histogram-fill package";
      description = "Cereal instances for histogram-fill package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."histogram-fill" or (errorHandler.buildDepError "histogram-fill"))
          ];
        buildable = true;
        };
      };
    }