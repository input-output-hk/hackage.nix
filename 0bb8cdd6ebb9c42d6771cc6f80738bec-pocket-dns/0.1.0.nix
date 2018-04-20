{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pocket-dns";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "junji.hashimoto@gmail.com";
        author = "Junji Hashimoto";
        homepage = "";
        url = "";
        synopsis = "Multi-backend (zookeeper and sqlite) DNS Server using persistent-library";
        description = "Multi-backend (zookeeper and sqlite) DNS Server using persistent-library";
        buildType = "Simple";
      };
      components = {
        pocket-dns = {
          depends  = [
            hsPkgs.base
            hsPkgs.dns
            hsPkgs.network
            hsPkgs.persistent-zookeeper
            hsPkgs.persistent-sqlite
            hsPkgs.persistent-template
            hsPkgs.persistent
            hsPkgs.optparse-applicative
            hsPkgs.bytestring
            hsPkgs.yaml
            hsPkgs.iproute
            hsPkgs.data-default
            hsPkgs.text
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.aeson
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          pocket-dns = {
            depends  = [
              hsPkgs.base
              hsPkgs.dns
              hsPkgs.network
              hsPkgs.persistent-zookeeper
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.persistent
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.shelly
              hsPkgs.http-conduit
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.iproute
              hsPkgs.yaml
              hsPkgs.monad-control
              hsPkgs.unordered-containers
              hsPkgs.aeson
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pocket-dns
              hsPkgs.transformers
              hsPkgs.hspec
              hsPkgs.hspec-contrib
              hsPkgs.hspec-server
              hsPkgs.test-sandbox
              hsPkgs.hspec-test-sandbox
              hsPkgs.cabal-test-bin
              hsPkgs.shakespeare
              hsPkgs.text
            ];
          };
        };
      };
    }