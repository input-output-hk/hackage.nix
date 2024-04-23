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
      identifier = { name = "datasets"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Nielsen <tanielsen@gmail.com>";
      author = "Tom Nielsen <tanielsen@gmail.com>";
      homepage = "https://github.com/glutamate/datasets";
      url = "";
      synopsis = "Classical data sets for statistics and machine learning";
      description = "Classical machine learning and statistics datasets from\nthe UCI Machine Learning Repository and other sources.\n\n> import Numeric.Datasets (getDataset)\n> import Numeric.Datasets.Iris (iris)\n>\n> main = do\n>   irises <- getDataset iris\n>   print (length irises)\n>   print (head irises)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
        ];
        buildable = true;
      };
    };
  }