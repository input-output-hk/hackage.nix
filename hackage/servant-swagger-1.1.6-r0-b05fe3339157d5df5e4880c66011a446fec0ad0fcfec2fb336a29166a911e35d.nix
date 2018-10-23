{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "servant-swagger";
        version = "1.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2018, Servant contributors";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "David Johnson, Nickolay Kudasov";
      homepage = "https://github.com/haskell-servant/servant-swagger";
      url = "";
      synopsis = "Generate Swagger specification for your servant API.";
      description = "Swagger is a project used to describe and document RESTful APIs.\nUnlike Servant it is language-agnostic and thus is quite popular among developers\nin different languages. It also exists for a longer time and has more tools to work with.\n\nThis package provides means to generate Swagger specification for a Servant API\nand also to partially test whether API conforms with its specification.\n\nGenerated Swagger specification then can be used for many things such as\n\n* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);\n\n* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);\n\n* and [many others](http://swagger.io/open-source-integrations/).";
      buildType = "Custom";
    };
    components = {
      "servant-swagger" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.servant)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
          ];
        };
        "spec" = {
          depends  = [
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
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }