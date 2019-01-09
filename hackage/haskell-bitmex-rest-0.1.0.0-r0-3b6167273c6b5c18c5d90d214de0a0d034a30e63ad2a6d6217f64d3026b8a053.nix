{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-bitmex-rest"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dan.lucsanszky@gmail.com";
      author = "Lucsanszky";
      homepage = "https://github.com/swagger-api/swagger-codegen#readme, https://github.com/Lucsanszky/haskell-bitmex/tree/master/rest";
      url = "";
      synopsis = "Auto-generated bitmex API Client";
      description = "\nClient library for calling the bitmex API based on http-client.\n\nhost:\n\nbase path: https://localhost/api/v1\n\nBitMEX API API version: 1.2.0\n\nOpenAPI spec version: 2.0\n\nOpenAPI-Specification: https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
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
          (hsPkgs.katip)
          (hsPkgs.safe-exceptions)
          (hsPkgs.case-insensitive)
          (hsPkgs.microlens)
          (hsPkgs.deepseq)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.unordered-containers)
            (hsPkgs.haskell-bitmex-rest)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.iso8601-time)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }