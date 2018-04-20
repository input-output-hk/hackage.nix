{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hunt-server-cli";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
        maintainer = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
        author = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
        homepage = "http://github.com/hunt-framework";
        url = "";
        synopsis = "A Command line Interface for the Hunt server.";
        description = "A Command line Interface for the Hunt server.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hunt-server-cli = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.containers
              hsPkgs.time
              hsPkgs.hunt-searchengine
              hsPkgs.hunt-client
              hsPkgs.hslogger
              hsPkgs.http-types
              hsPkgs.string-conversions
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.docopt
              hsPkgs.csv-conduit
              hsPkgs.resourcet
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }