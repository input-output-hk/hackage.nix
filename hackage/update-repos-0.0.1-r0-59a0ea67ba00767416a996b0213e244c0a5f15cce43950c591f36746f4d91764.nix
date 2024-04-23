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
      identifier = { name = "update-repos"; version = "0.0.1"; };
      license = "Apache-2.0";
      copyright = "2017 Pedro Vicente Gómez Sánchez";
      maintainer = "pedrovicente.gomez@gmail.com";
      author = "Pedro Vicente Gómez Sánchez";
      homepage = "https://github.com/pedrovgs/update-repos";
      url = "";
      synopsis = "Update all your git repositories with just one command.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
        ];
        buildable = true;
      };
      exes = {
        "update-repos" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."update-repos" or (errorHandler.buildDepError "update-repos"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          ];
          buildable = true;
        };
      };
      tests = {
        "update-repos-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."update-repos" or (errorHandler.buildDepError "update-repos"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }