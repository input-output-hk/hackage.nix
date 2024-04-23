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
      identifier = { name = "morpheus-graphql-client"; version = "0.27.3"; };
      license = "MIT";
      copyright = "(c) 2019 Daviti Nalchevanidze";
      maintainer = "d.nalchevanidze@gmail.com";
      author = "Daviti Nalchevanidze";
      homepage = "https://morpheusgraphql.com";
      url = "";
      synopsis = "Morpheus GraphQL Client";
      description = "Build GraphQL APIs with your favorite functional language!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."morpheus-graphql-code-gen-utils" or (errorHandler.buildDepError "morpheus-graphql-code-gen-utils"))
          (hsPkgs."morpheus-graphql-core" or (errorHandler.buildDepError "morpheus-graphql-core"))
          (hsPkgs."morpheus-graphql-subscriptions" or (errorHandler.buildDepError "morpheus-graphql-subscriptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
        ];
        buildable = true;
      };
      tests = {
        "morpheus-graphql-client-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."morpheus-graphql-client" or (errorHandler.buildDepError "morpheus-graphql-client"))
            (hsPkgs."morpheus-graphql-code-gen-utils" or (errorHandler.buildDepError "morpheus-graphql-code-gen-utils"))
            (hsPkgs."morpheus-graphql-core" or (errorHandler.buildDepError "morpheus-graphql-core"))
            (hsPkgs."morpheus-graphql-subscriptions" or (errorHandler.buildDepError "morpheus-graphql-subscriptions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
          ];
          buildable = true;
        };
      };
    };
  }