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
        name = "wrecker-ui";
        version = "2.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lorenzo@seatgeek.com";
      author = "José Lorenzo Rodríguez";
      homepage = "";
      url = "";
      synopsis = "A web interface for Wrecker, the HTTP Performance Benchmarker";
      description = "'wrecker-ui' is a web based interface to visualize performance tests built using the wrecker library and schedule test runs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wrecker-ui" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.http-types)
            (hsPkgs.wai-cors)
            (hsPkgs.directory)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.esqueleto)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.resource-pool)
            (hsPkgs.postgresql-simple-url)
            (hsPkgs.postgresql-simple)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.bytestring)
            (hsPkgs.iso8601-time)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-process-async)
            (hsPkgs.distributed-static)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.HostAndPort)
          ];
        };
      };
    };
  }