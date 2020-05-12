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
      identifier = { name = "music-graphics"; version = "1.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Diagrams-based visualization of musical data structures.";
      description = "To be written.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."music-score" or (errorHandler.buildDepError "music-score"))
          (hsPkgs."music-pitch" or (errorHandler.buildDepError "music-pitch"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          ];
        buildable = true;
        };
      };
    }