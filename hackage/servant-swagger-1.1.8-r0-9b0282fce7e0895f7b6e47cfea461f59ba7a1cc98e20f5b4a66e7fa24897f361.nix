{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "servant-swagger"; version = "1.1.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2018, Servant contributors";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "David Johnson, Nickolay Kudasov";
      homepage = "https://github.com/haskell-servant/servant-swagger";
      url = "";
      synopsis = "Generate a Swagger/OpenAPI/OAS 2.0 specification for your servant API.";
      description = "Swagger is a project used to describe and document RESTful APIs. The core of the\nproject is the [OpenAPI Specification (OAS)](https://swagger.io/docs/specification/about/).\nThis library implements v2.0 of the spec. Unlike Servant it is language-agnostic and thus is\nquite popular among developers in different languages. It has also existed for a longer time\nand has more helpful tooling.\n\nThis package provides means to generate a Swagger/OAS specification for a Servant API\nand also to partially test whether an API conforms with its specification.\n\nGenerated Swagger specification then can be used for many things such as\n\n* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);\n\n* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);\n\n* and [many others](http://swagger.io/open-source-integrations/).";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."insert-ordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "insert-ordered-containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."singleton-bool" or ((hsPkgs.pkgs-errors).buildDepError "singleton-bool"))
          (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-swagger" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger"))
            (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }