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
        name = "postgrest-ws";
        version = "0.3.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Diogo Biazus";
      maintainer = "diogo@biazus.me";
      author = "Diogo Biazus";
      homepage = "https://github.com/diogob/postgrest-ws#readme";
      url = "";
      synopsis = "PostgREST extension to map LISTEN/NOTIFY messages to Websockets";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "postgrest-ws" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hasql-pool)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.websockets)
          (hsPkgs.wai-websockets)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.time)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.jwt)
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
        ];
      };
      exes = {
        "postgrest-ws" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.warp)
            (hsPkgs.unix)
            (hsPkgs.jwt)
            (hsPkgs.postgrest-ws)
            (hsPkgs.postgresql-libpq)
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
            (hsPkgs.auto-update)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.http-types)
          ];
        };
      };
      tests = {
        "postgrest-ws-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.postgrest-ws)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.aeson)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.http-types)
            (hsPkgs.wai-extra)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }