{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c)2017 Robert Fischer";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#README.md";
      url = "";
      synopsis = "Robert Fischer's Common library, for all Robert Fischer's common needs.";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.wai)
          (hsPkgs.classy-prelude)
          (hsPkgs.uuid-types)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.string-conversions)
          (hsPkgs.monad-control)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.hedis)
          (hsPkgs.async)
          (hsPkgs.simple-logger)
          (hsPkgs.http-client-tls)
          (hsPkgs.wreq)
          (hsPkgs.servant-docs)
          (hsPkgs.data-default)
          (hsPkgs.servant-blaze)
          (hsPkgs.wai-extra)
          (hsPkgs.temporary)
          (hsPkgs.blaze-html)
          (hsPkgs.servant-swagger)
          (hsPkgs.swagger2)
          (hsPkgs.markdown)
          (hsPkgs.url)
          (hsPkgs.lens)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.http-api-data)
          (hsPkgs.time-units)
          (hsPkgs.wai-cors)
          (hsPkgs.aeson-diff)
          (hsPkgs.vector)
          (hsPkgs.lifted-async)
          (hsPkgs.text)
          ];
        };
      };
    }