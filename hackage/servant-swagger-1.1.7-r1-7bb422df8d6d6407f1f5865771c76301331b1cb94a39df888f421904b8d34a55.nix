{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "servant-swagger"; version = "1.1.7"; };
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.singleton-bool)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.servant)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-swagger)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }