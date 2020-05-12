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
      identifier = { name = "legion-discovery"; version = "0.2.2.1"; };
      license = "Apache-2.0";
      copyright = "2016 Rick Owens";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/legion-discovery#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."canteven-http" or (errorHandler.buildDepError "canteven-http"))
          (hsPkgs."canteven-log" or (errorHandler.buildDepError "canteven-log"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."legion" or (errorHandler.buildDepError "legion"))
          (hsPkgs."legion-extra" or (errorHandler.buildDepError "legion-extra"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."scotty-format" or (errorHandler.buildDepError "scotty-format"))
          (hsPkgs."scotty-resource" or (errorHandler.buildDepError "scotty-resource"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "legion-discovery" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."legion-discovery" or (errorHandler.buildDepError "legion-discovery"))
            ];
          buildable = true;
          };
        };
      tests = {
        "legion-discovery-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."legion-discovery" or (errorHandler.buildDepError "legion-discovery"))
            ];
          buildable = true;
          };
        };
      };
    }