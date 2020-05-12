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
      identifier = { name = "oden-go-packages"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Oskar Wickström";
      maintainer = "Oskar Wickström <oskar.wickstrom@gmail.com>";
      author = "Oskar Wickström <oskar.wickstrom@gmail.com>";
      homepage = "http://oden-lang.org";
      url = "";
      synopsis = "Provides Go package metadata.";
      description = "Provides a Haskell interface to the Go package importer, enabling querying\nGo packages for definitions and their types.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }