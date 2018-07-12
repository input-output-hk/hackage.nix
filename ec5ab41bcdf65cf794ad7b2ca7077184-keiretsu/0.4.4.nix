{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "keiretsu";
          version = "0.4.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "";
        url = "";
        synopsis = "Multi-process orchestration for development and integration testing";
        description = "Keiretsu is an orchestration manager primarily designed for local development\nand integration testing.\n\nIt allows you to specify dependencies that should be running/available before\nthe start of the local application, triggers setup/teardown hooks, and applies\na consistent environment to all child processes ensuring deterministic and\nrepeatable configuration.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "keiretsu" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hslogger
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.text
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.yaml
            ];
          };
        };
      };
    }