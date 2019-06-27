{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ci = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "postgrest"; version = "6.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Steve Chávez <stevechavezast@gmail.com>";
      author = "Joe Nelson, Adam Baker";
      homepage = "https://postgrest.org";
      url = "";
      synopsis = "REST API for any Postgres database";
      description = "Reads the schema of a PostgreSQL database and creates RESTful routes\nfor the tables and views, supporting all HTTP verbs that security\npermits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.Ranged-sets)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cassava)
          (hsPkgs.configurator-pg)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.cookie)
          (hsPkgs.either)
          (hsPkgs.gitrev)
          (hsPkgs.hasql)
          (hsPkgs.hasql-pool)
          (hsPkgs.hasql-transaction)
          (hsPkgs.heredoc)
          (hsPkgs.http-types)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.interpolatedstring-perl6)
          (hsPkgs.jose)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.protolude)
          (hsPkgs.regex-tdfa)
          (hsPkgs.scientific)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-cors)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-middleware-static)
          ];
        };
      exes = {
        "postgrest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.auto-update)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.hasql-transaction)
            (hsPkgs.network)
            (hsPkgs.postgrest)
            (hsPkgs.protolude)
            (hsPkgs.retry)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.warp)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.async)
            (hsPkgs.auto-update)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.hasql-transaction)
            (hsPkgs.heredoc)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.monad-control)
            (hsPkgs.postgrest)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.regex-tdfa)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            ];
          };
        };
      };
    }