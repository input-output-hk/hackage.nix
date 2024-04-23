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
      identifier = { name = "takedouble"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Shae Erisson";
      maintainer = "Shae Erisson";
      author = "Shae Erisson";
      homepage = "https://github.com/shapr/takedouble";
      url = "";
      synopsis = "duplicate file finder";
      description = "takedouble is a fast duplicate file finder that filters by file size, first and last 4k chunks before checking the full contents of files that pass the filter.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
        ];
        buildable = true;
      };
      exes = {
        "takedouble" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."takedouble" or (errorHandler.buildDepError "takedouble"))
          ];
          buildable = true;
        };
      };
      tests = {
        "takedouble-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."takedouble" or (errorHandler.buildDepError "takedouble"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }