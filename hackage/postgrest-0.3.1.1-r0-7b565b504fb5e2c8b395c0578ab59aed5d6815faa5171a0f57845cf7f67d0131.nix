{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ci = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "postgrest"; version = "0.3.1.1"; };
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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.errors)
          (hsPkgs.hasql)
          (hsPkgs.hasql-transaction)
          (hsPkgs.hasql-pool)
          (hsPkgs.http-types)
          (hsPkgs.interpolatedstring-perl6)
          (hsPkgs.jwt)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mtl)
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
          (hsPkgs.HTTP)
          (hsPkgs.Ranged-sets)
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
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.errors)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.hasql-transaction)
            (hsPkgs.http-types)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.jwt)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.postgrest)
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
            (hsPkgs.warp)
            (hsPkgs.HTTP)
            (hsPkgs.Ranged-sets)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base64-string)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.errors)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.hasql-transaction)
            (hsPkgs.heredoc)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.http-types)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.jwt)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.scientific)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.unix)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-cors)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
            (hsPkgs.HTTP)
            (hsPkgs.Ranged-sets)
            ];
          };
        };
      };
    }