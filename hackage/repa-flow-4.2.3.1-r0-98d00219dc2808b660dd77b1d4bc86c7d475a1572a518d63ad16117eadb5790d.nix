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
      identifier = { name = "repa-flow"; version = "4.2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Repa Development Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Data-parallel data flows.";
      description = "Data-parallel data flows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."repa-eval" or (errorHandler.buildDepError "repa-eval"))
          (hsPkgs."repa-stream" or (errorHandler.buildDepError "repa-stream"))
          (hsPkgs."repa-scalar" or (errorHandler.buildDepError "repa-scalar"))
          (hsPkgs."repa-convert" or (errorHandler.buildDepError "repa-convert"))
          (hsPkgs."repa-array" or (errorHandler.buildDepError "repa-array"))
        ];
        buildable = true;
      };
    };
  }