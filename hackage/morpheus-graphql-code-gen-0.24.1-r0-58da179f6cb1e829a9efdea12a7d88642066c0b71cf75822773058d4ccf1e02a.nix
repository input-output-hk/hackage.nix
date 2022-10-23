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
      identifier = { name = "morpheus-graphql-code-gen"; version = "0.24.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Daviti Nalchevanidze";
      maintainer = "d.nalchevanidze@gmail.com";
      author = "Daviti Nalchevanidze";
      homepage = "https://morpheusgraphql.com";
      url = "";
      synopsis = "Morpheus GraphQL CLI";
      description = "code generator for Morpheus GraphQL";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."morpheus-graphql-code-gen-utils" or (errorHandler.buildDepError "morpheus-graphql-code-gen-utils"))
          (hsPkgs."morpheus-graphql-core" or (errorHandler.buildDepError "morpheus-graphql-core"))
          (hsPkgs."morpheus-graphql-server" or (errorHandler.buildDepError "morpheus-graphql-server"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "morpheus" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."morpheus-graphql-client" or (errorHandler.buildDepError "morpheus-graphql-client"))
            (hsPkgs."morpheus-graphql-code-gen" or (errorHandler.buildDepError "morpheus-graphql-code-gen"))
            (hsPkgs."morpheus-graphql-code-gen-utils" or (errorHandler.buildDepError "morpheus-graphql-code-gen-utils"))
            (hsPkgs."morpheus-graphql-core" or (errorHandler.buildDepError "morpheus-graphql-core"))
            (hsPkgs."morpheus-graphql-server" or (errorHandler.buildDepError "morpheus-graphql-server"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }