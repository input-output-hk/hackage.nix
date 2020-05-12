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
      identifier = { name = "celtchar"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2016 Thomas Letan";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan";
      homepage = "https://github.com/ogma-project/celtchar#readme";
      url = "";
      synopsis = "A tool to build a novel";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ogmarkup" or (errorHandler.buildDepError "ogmarkup"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
        buildable = true;
        };
      exes = {
        "celtchar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."celtchar" or (errorHandler.buildDepError "celtchar"))
            ];
          buildable = true;
          };
        };
      tests = {
        "celtchar-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."celtchar" or (errorHandler.buildDepError "celtchar"))
            ];
          buildable = true;
          };
        };
      };
    }