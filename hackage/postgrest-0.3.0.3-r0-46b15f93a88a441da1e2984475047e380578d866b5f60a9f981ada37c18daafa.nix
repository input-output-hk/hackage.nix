{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { ci = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgrest";
        version = "0.3.0.3";
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
      "postgrest" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.errors)
          (hsPkgs.hasql)
          (hsPkgs.hasql-backend)
          (hsPkgs.hasql-postgres)
          (hsPkgs.http-types)
          (hsPkgs.jwt)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-cors)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-middleware-static)
          (hsPkgs.HTTP)
          (hsPkgs.MissingH)
          (hsPkgs.Ranged-sets)
        ];
      };
      exes = {
        "postgrest" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.hasql)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql-postgres)
            (hsPkgs.jwt)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.postgrest)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.scientific)
            (hsPkgs.string-conversions)
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
            (hsPkgs.HTTP)
            (hsPkgs.http-types)
            (hsPkgs.MissingH)
            (hsPkgs.Ranged-sets)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-string)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.hasql)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql-postgres)
            (hsPkgs.heredoc)
            (hsPkgs.hlint)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.http-types)
            (hsPkgs.jwt)
            (hsPkgs.optparse-applicative)
            (hsPkgs.packdeps)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.scientific)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-cors)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.HTTP)
            (hsPkgs.MissingH)
            (hsPkgs.Ranged-sets)
          ];
        };
      };
    };
  }