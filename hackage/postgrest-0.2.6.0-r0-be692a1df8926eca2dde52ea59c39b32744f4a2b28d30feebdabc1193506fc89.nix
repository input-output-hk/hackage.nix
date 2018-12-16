{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgrest";
        version = "0.2.6.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "cred+github@begriffs.com";
      author = "Joe Nelson, Adam Baker";
      homepage = "https://github.com/begriffs/postgrest";
      url = "";
      synopsis = "REST API for any Postgres database";
      description = "Reads the schema of a PostgreSQL database and creates RESTful routes\nfor the tables and views, supporting all HTTP verbs that security\npermits.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "postgrest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasql)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql-postgres)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-cors)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.HTTP)
            (hsPkgs.convertible)
            (hsPkgs.http-types)
            (hsPkgs.case-insensitive)
            (hsPkgs.scientific)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.split)
            (hsPkgs.string-conversions)
            (hsPkgs.stringsearch)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.Ranged-sets)
            (hsPkgs.transformers)
            (hsPkgs.MissingH)
            (hsPkgs.bcrypt)
            (hsPkgs.base64-string)
            (hsPkgs.network-uri)
            (hsPkgs.resource-pool)
            (hsPkgs.blaze-builder)
            (hsPkgs.vector)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.hasql)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql-postgres)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.packdeps)
            (hsPkgs.hlint)
            (hsPkgs.HTTP)
            (hsPkgs.convertible)
            (hsPkgs.case-insensitive)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-cors)
            (hsPkgs.containers)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.http-types)
            (hsPkgs.scientific)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stringsearch)
            (hsPkgs.unordered-containers)
            (hsPkgs.regex-base)
            (hsPkgs.string-conversions)
            (hsPkgs.http-media)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.Ranged-sets)
            (hsPkgs.transformers)
            (hsPkgs.MissingH)
            (hsPkgs.split)
            (hsPkgs.bcrypt)
            (hsPkgs.base64-string)
            (hsPkgs.network-uri)
            (hsPkgs.resource-pool)
            (hsPkgs.blaze-builder)
            (hsPkgs.vector)
            (hsPkgs.mtl)
            (hsPkgs.process)
          ];
        };
      };
    };
  }