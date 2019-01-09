{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ci = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "postgrest"; version = "0.3.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.HTTP)
          (hsPkgs.MissingH)
          (hsPkgs.Ranged-sets)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-string)
          (hsPkgs.bcrypt)
          (hsPkgs.bifunctors)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          (hsPkgs.errors)
          (hsPkgs.hasql)
          (hsPkgs.hasql-backend)
          (hsPkgs.hasql-postgres)
          (hsPkgs.http-types)
          (hsPkgs.jwt)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.resource-pool)
          (hsPkgs.scientific)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.stringsearch)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-cors)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-middleware-static)
          (hsPkgs.warp)
          ];
        };
      exes = {
        "postgrest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.postgrest)
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
            (hsPkgs.aeson-pretty)
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
            (hsPkgs.cassava)
            (hsPkgs.jwt)
            (hsPkgs.parsec)
            (hsPkgs.errors)
            (hsPkgs.bifunctors)
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
            (hsPkgs.cassava)
            (hsPkgs.process)
            (hsPkgs.heredoc)
            (hsPkgs.jwt)
            (hsPkgs.parsec)
            (hsPkgs.errors)
            (hsPkgs.bifunctors)
            ];
          };
        };
      };
    }