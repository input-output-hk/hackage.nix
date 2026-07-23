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
      identifier = { name = "servant-openapi-hs"; version = "5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2020, Servant contributors";
      maintainer = "nadeem@gmail.com";
      author = "David Johnson, Nickolay Kudasov, Maxim Koltsov";
      homepage = "https://github.com/shinzui/servant-openapi-hs";
      url = "";
      synopsis = "Generate an OpenAPI 3.1 specification for your servant API.";
      description = "[OpenAPI](https://spec.openapis.org/oas/v3.1.0) is a language-agnostic format\nfor describing and documenting HTTP APIs in JSON or YAML. This library\ngenerates an OpenAPI 3.1 specification from a Servant API and can partially\ntest whether an API conforms with its specification.\n.\nA generated specification can be used for many things, such as\n.\n* displaying interactive documentation in any OpenAPI 3.1 viewer;\n.\n* generating clients and servers in many languages using [OpenAPI Generator](https://openapi-generator.tech/);\n.\n* and many others across the OpenAPI tooling ecosystem.\n.\nThis package is a fork of\n[@servant-openapi3@](https://github.com/biocad/servant-openapi3) that targets\nOpenAPI 3.1 via [@openapi-hs@](https://github.com/shinzui/openapi-hs).";
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
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."openapi-hs" or (errorHandler.buildDepError "openapi-hs"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."singleton-bool" or (errorHandler.buildDepError "singleton-bool"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "gen-openapi" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."openapi-hs" or (errorHandler.buildDepError "openapi-hs"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-openapi-hs" or (errorHandler.buildDepError "servant-openapi-hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."openapi-hs" or (errorHandler.buildDepError "openapi-hs"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-openapi-hs" or (errorHandler.buildDepError "servant-openapi-hs"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }