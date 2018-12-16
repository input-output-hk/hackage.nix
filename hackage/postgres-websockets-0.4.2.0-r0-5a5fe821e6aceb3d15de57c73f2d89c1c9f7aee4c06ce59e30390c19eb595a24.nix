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
        name = "postgres-websockets";
        version = "0.4.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Diogo Biazus";
      maintainer = "diogo@biazus.me";
      author = "Diogo Biazus";
      homepage = "https://github.com/diogob/postgres-websockets#readme";
      url = "";
      synopsis = "PostgREST extension to map LISTEN/NOTIFY messages to Websockets";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hasql-pool)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.websockets)
          (hsPkgs.wai-websockets)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.jose)
          (hsPkgs.unordered-containers)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.aeson)
          (hsPkgs.protolude)
          (hsPkgs.jwt)
          (hsPkgs.hasql)
          (hsPkgs.either)
          (hsPkgs.stm-containers)
          (hsPkgs.stm)
          (hsPkgs.retry)
          (hsPkgs.stringsearch)
          (hsPkgs.time)
          (hsPkgs.contravariant)
        ];
      };
      exes = {
        "postgres-websockets" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.warp)
            (hsPkgs.postgres-websockets)
            (hsPkgs.protolude)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.configurator)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-app-static)
            (hsPkgs.heredoc)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
      tests = {
        "postgres-websockets-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.postgres-websockets)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.aeson)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.http-types)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai-extra)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }