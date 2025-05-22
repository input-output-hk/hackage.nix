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
      specVersion = "2.2";
      identifier = { name = "atomic-css"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/seanhess/atomic-css";
      url = "";
      synopsis = "Type-safe, composable CSS utility functions. Inspired by Tailwindcss and Elm-UI";
      description = "Type-safe, composable CSS utility functions. Inspired by Tailwindcss and Elm-UI . See documentation for the @Web.Atomic@ module below";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."atomic-css" or (errorHandler.buildDepError "atomic-css"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."skeletest" or (errorHandler.buildDepError "skeletest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }