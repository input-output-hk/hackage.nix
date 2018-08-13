{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "swagger-petstore";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Jon Schoning";
      maintainer = "jonschoning@gmail.com";
      author = "Jon Schoning";
      homepage = "https://github.com/swagger-api/swagger-codegen#readme";
      url = "";
      synopsis = "Auto-generated swagger-petstore API Client";
      description = "\nClient library for calling the swagger-petstore API based on http-client.\nhost: petstore.swagger.io\n\nbase path: http://petstore.swagger.io/v2\n\napiVersion: 0.0.1\n\nswagger version: 2.0\n\nOpenAPI-Specification: https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md";
      buildType = "Simple";
    };
    components = {
      "swagger-petstore" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-api-data)
          (hsPkgs.http-media)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.iso8601-time)
          (hsPkgs.vector)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.exceptions)
          (hsPkgs.monad-logger)
          (hsPkgs.safe-exceptions)
          (hsPkgs.case-insensitive)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.unordered-containers)
            (hsPkgs.swagger-petstore)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.iso8601-time)
            (hsPkgs.aeson)
            (hsPkgs.semigroups)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }