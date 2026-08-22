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
      specVersion = "3.0";
      identifier = { name = "servant-openapi3"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2020, Servant contributors\n(c) 2020-2025 Maxim Koltsov\n(c) 2026 Servant contributors";
      maintainer = "Laurent P. Rene de Cotret";
      author = "David Johnson, Nickolay Kudasov, Maxim Koltsov";
      homepage = "https://github.com/haskell-servant/servant";
      url = "";
      synopsis = "Generate a Swagger/OpenAPI/OAS 3.0 specification for your servant API.";
      description = "Swagger is a project used to describe and document RESTful APIs. The core of the \nproject is the [OpenAPI Specification (OAS)](https://swagger.io/docs/specification/about/). \nThis library implements v3.0 of the spec. Unlike Servant it is language-agnostic and thus is \nquite popular among developers in different languages. It has also existed for a longer time \nand has more helpful tooling.\n.\nThis package provides means to generate a Swagger/OAS specification for a Servant API\nand also to partially test whether an API conforms with its specification.\n.\nGenerated Swagger specification then can be used for many things such as\n.\n* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);\n.\n* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);\n.\n* and [many others](http://swagger.io/open-source-integrations/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."singleton-bool" or (errorHandler.buildDepError "singleton-bool"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-openapi3" or (errorHandler.buildDepError "servant-openapi3"))
            (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }