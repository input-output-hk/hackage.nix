{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      ssl = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stratum-tool";
          version = "0.0.4";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "joel.lehtonen@koodilehto.fi";
        author = "Joel Lehtonen";
        homepage = "";
        url = "";
        synopsis = "Client for Stratum protocol";
        description = "Connects to Electrum server via Stratum protocol and\nallows querying bitcoin wallet balances and other commands\nsupported by the server. It supports the original JSON format\nin addition to shell script friendly JSON breadcrumbs format.";
        buildType = "Simple";
      };
      components = {
        exes = {
          stratum-tool = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.curl-aeson
              hsPkgs.network
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.bytestring-builder
              hsPkgs.curl
              hsPkgs.vector
              hsPkgs.unordered-containers
            ] ++ pkgs.lib.optional _flags.ssl hsPkgs.connection;
          };
        };
      };
    }