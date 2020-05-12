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
      identifier = { name = "corenlp-parser"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/corenlp-parser#readme";
      url = "";
      synopsis = "Launches CoreNLP and parses the JSON output";
      description = "Launches CoreNLP and parses the JSON output";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          (hsPkgs."rocksdb-haskell" or (errorHandler.buildDepError "rocksdb-haskell"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."store" or (errorHandler.buildDepError "store"))
          (hsPkgs."string-class" or (errorHandler.buildDepError "string-class"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }