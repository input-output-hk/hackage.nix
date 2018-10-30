{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
      browser = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rfc";
        version = "0.0.0.13";
      };
      license = "BSD-3-Clause";
      copyright = "(c)2018 Robert Fischer";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#README.md";
      url = "";
      synopsis = "Robert Fischer's Common library";
      description = "An enhanced Prelude and various utilities for Aeson, Servant, PSQL, and Redis that Robert Fischer uses.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.classy-prelude)
          (hsPkgs.uuid-types)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.string-conversions)
          (hsPkgs.monad-control)
          (hsPkgs.resource-pool)
          (hsPkgs.async)
          (hsPkgs.data-default)
          (hsPkgs.servant-blaze)
          (hsPkgs.blaze-html)
          (hsPkgs.url)
          (hsPkgs.lens)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.http-api-data)
          (hsPkgs.time-units)
          (hsPkgs.aeson-diff)
          (hsPkgs.vector)
          (hsPkgs.lifted-async)
          (hsPkgs.text)
        ] ++ pkgs.lib.optionals (flags.browser) [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
        ]) ++ pkgs.lib.optionals (!flags.browser) [
          (hsPkgs.servant-server)
          (hsPkgs.wai)
          (hsPkgs.aeson)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-cors)
          (hsPkgs.postgresql-simple)
          (hsPkgs.hedis)
          (hsPkgs.simple-logger)
          (hsPkgs.servant-docs)
          (hsPkgs.temporary)
          (hsPkgs.http-client-tls)
          (hsPkgs.wreq)
          (hsPkgs.servant-swagger)
          (hsPkgs.swagger2)
          (hsPkgs.binary)
          (hsPkgs.markdown)
          (hsPkgs.servant-client)
        ];
      };
    };
  }