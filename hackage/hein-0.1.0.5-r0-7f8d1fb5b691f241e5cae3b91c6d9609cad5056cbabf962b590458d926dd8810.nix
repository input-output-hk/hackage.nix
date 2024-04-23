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
      identifier = { name = "hein"; version = "0.1.0.5"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "khanage@gmail.com";
      author = "Khan Thompson";
      homepage = "https://github.com/khanage/heineken";
      url = "";
      synopsis = "An extensible build helper for haskell, in the vein of leiningen.";
      description = "A general build tool for haskell projects inspired by leiningen. It is intended to be useful for the automation of all project creation tedium, as well as eventually integrate with cloud deployments. It is intended that this will support arbitrary plugins in the future.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hein" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
          buildable = true;
        };
      };
    };
  }