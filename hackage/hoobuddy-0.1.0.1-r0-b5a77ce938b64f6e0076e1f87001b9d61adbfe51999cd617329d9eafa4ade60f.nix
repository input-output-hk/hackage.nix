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
      identifier = { name = "hoobuddy"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tobias.pflug@gmail.com";
      author = "tobias pflug";
      homepage = "http://github.com/gilligan/hoobuddy";
      url = "";
      synopsis = "Simple tool for fetching and merging hoogle data";
      description = "Hoobuddy parses the specified cabal project file and invokes hoogle to fetch databases for\nall specified dependencies merging the result into a `default.hoo` file in the current directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoobuddy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }