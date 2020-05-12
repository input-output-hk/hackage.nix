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
      identifier = { name = "data-files-gen"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 JP Moresmau";
      maintainer = "jp@moresmau.fr";
      author = "JP Moresmau";
      homepage = "https://github.com/JPMoresmau/data-files-gen#readme";
      url = "";
      synopsis = "Generate data-files Cabal file field from existing files";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      exes = {
        "data-files-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-files-gen" or (errorHandler.buildDepError "data-files-gen"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      tests = {
        "data-files-gen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-files-gen" or (errorHandler.buildDepError "data-files-gen"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }