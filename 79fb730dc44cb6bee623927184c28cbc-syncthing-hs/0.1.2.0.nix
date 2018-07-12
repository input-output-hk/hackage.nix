{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "syncthing-hs";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jetho@gmx.de";
        author = "Jens Thomas";
        homepage = "https://github.com/jetho/syncthing-hs";
        url = "";
        synopsis = "Haskell bindings for the Syncthing REST API";
        description = "\nsee: <https://github.com/syncthing/syncthing/wiki/REST-Interface>\n\nA short tutorial is available at:\n<http://jetho.org/posts/2015-03-07-syncthing-hs-tutorial.html>";
        buildType = "Simple";
      };
      components = {
        "syncthing-hs" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.connection
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.lens
            hsPkgs.old-locale
            hsPkgs.regex-posix
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.wreq
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.derive
              hsPkgs.either
              hsPkgs.lens
              hsPkgs.quickcheck-instances
              hsPkgs.syncthing-hs
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wreq
            ];
          };
        };
      };
    }