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
      specVersion = "1.12";
      identifier = { name = "polyglot"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Alberto Perez Lopez";
      maintainer = "albertoperez1994@gmail.com";
      author = "Alberto Perez Lopez";
      homepage = "https://github.com/albertprz/polyglot#readme";
      url = "";
      synopsis = "Haskell to Purescript & Scala 3 transpiler";
      description = "Please see the README on GitHub at <https://github.com/albertprz/polyglot#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bookhound" or (errorHandler.buildDepError "bookhound"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ];
        buildable = true;
        };
      exes = {
        "polyglot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bookhound" or (errorHandler.buildDepError "bookhound"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."polyglot" or (errorHandler.buildDepError "polyglot"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            ];
          buildable = true;
          };
        };
      };
    }