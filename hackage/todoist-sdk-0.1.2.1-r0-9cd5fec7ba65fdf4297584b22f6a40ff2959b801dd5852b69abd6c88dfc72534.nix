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
      identifier = { name = "todoist-sdk"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "2025 Sam S. Almahri";
      maintainer = "sam.salmahri@gmail.com";
      author = "Sam S. Almahri";
      homepage = "https://github.com/samahri/TodoistSDK";
      url = "";
      synopsis = "Unofficial Haskell SDK for the Todoist REST API";
      description = "TodoistSDK provides a type-safe, tagless-final interface to the Todoist REST API. It includes comprehensive coverage of Projects, Tasks, Comments, Sections, and Labels endpoints with both real HTTP and tracing interpreters for testing. The library uses mtl-style type classes for operation definitions and provides a clean builder pattern for request construction.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."todoist-sdk".components.sublibs.todoist-sdk-internal or (errorHandler.buildDepError "todoist-sdk:todoist-sdk-internal"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      sublibs = {
        "todoist-sdk-internal" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "todoist-sdk-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."todoist-sdk" or (errorHandler.buildDepError "todoist-sdk"))
            (hsPkgs."todoist-sdk".components.sublibs.todoist-sdk-internal or (errorHandler.buildDepError "todoist-sdk:todoist-sdk-internal"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "integration-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dotenv" or (errorHandler.buildDepError "dotenv"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."todoist-sdk" or (errorHandler.buildDepError "todoist-sdk"))
            (hsPkgs."todoist-sdk".components.sublibs.todoist-sdk-internal or (errorHandler.buildDepError "todoist-sdk:todoist-sdk-internal"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }