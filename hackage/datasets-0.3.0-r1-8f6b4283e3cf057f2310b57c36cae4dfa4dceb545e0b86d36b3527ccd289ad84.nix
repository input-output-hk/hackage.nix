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
      identifier = { name = "datasets"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Marco Zocca <ocramz fripost org>";
      author = "Tom Nielsen <tanielsen@gmail.com>";
      homepage = "https://github.com/DataHaskell/dh-core";
      url = "";
      synopsis = "Classical data sets for statistics and machine learning";
      description = "Classical machine learning and statistics datasets from\nthe UCI Machine Learning Repository and other sources.\n\nThe @datasets@ package defines two different kinds of datasets:\n\n* small data sets which are directly (or indirectly with `file-embed`)\nembedded in the package as pure values and do not require network or IO to download\nthe data set. This includes Iris, Anscombe and OldFaithful.\n\n* other data sets which need to be fetched over the network with\n`Numeric.Datasets.getDataset` and are cached in a local temporary directory.\n\nThe @datafiles/@ directory of this package includes copies of a few famous datasets, such as Titanic, Nightingale and Michelson.\n\nExample :\n\n> import Numeric.Datasets (getDataset)\n> import Numeric.Datasets.Iris (iris)\n> import Numeric.Datasets.Abalone (abalone)\n>\n> main = do\n>   -- The Iris data set is embedded\n>   print (length iris)\n>   print (head iris)\n>   -- The Abalone dataset is fetched\n>   abas <- getDataset abalone\n>   print (length abas)\n>   print (head abas)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }