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
      identifier = { name = "web-view"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/seanhess/web-view";
      url = "";
      synopsis = "Type-safe HTML and CSS with intuitive layouts and composable styles.";
      description = "Type-safe HTML and CSS with intuitive layouts and composable styles. Inspired by Tailwindcss and Elm-UI . See documentation for the @Web.View@ module below";
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
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."web-view" or (errorHandler.buildDepError "web-view"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.sydtest-discover.components.exes.sydtest-discover or (pkgs.pkgsBuildBuild.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }