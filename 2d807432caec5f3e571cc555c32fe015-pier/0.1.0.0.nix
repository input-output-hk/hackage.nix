{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pier";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "judah.jacobson@gmail.com";
        author = "";
        homepage = "https://github.com/judah/pier#readme";
        url = "";
        synopsis = "Yet another Haskell build system.";
        description = "A build system for Haskell projects, built on top of [shake](http://shakebuild.com).";
        buildType = "Simple";
      };
      components = {
        "pier" = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.binary
            hsPkgs.binary-orphans
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptohash-sha256
            hsPkgs.directory
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.process
            hsPkgs.shake
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.yaml
          ];
        };
        exes = {
          "pier" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.optparse-applicative
              hsPkgs.pier
              hsPkgs.shake
              hsPkgs.split
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }