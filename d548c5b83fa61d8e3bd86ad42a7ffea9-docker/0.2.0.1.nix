{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "docker";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "deni@denibertovic.com";
        author = "Deni Bertovic";
        homepage = "https://github.com/denibertovic/docker-hs";
        url = "";
        synopsis = "Haskell wrapper for Docker Remote API";
        description = "";
        buildType = "Simple";
      };
      components = {
        "docker" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.lens-aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.wreq
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.network-uri
            hsPkgs.pipes-http
            hsPkgs.pipes
            hsPkgs.pipes-text
            hsPkgs.pipes-bytestring
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.docker
              hsPkgs.lens
              hsPkgs.aeson
              hsPkgs.lens-aeson
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.wreq
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.pipes
              hsPkgs.pipes-http
              hsPkgs.pipes-text
              hsPkgs.pipes-bytestring
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.tasty-hunit
              hsPkgs.process
              hsPkgs.http-types
            ];
          };
        };
      };
    }