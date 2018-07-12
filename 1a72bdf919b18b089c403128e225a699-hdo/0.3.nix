{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hdo";
          version = "0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Arnaud Bailly <arnaud.oqube@gmail.com>";
        author = "Arnaud Bailly";
        homepage = "";
        url = "";
        synopsis = "A Digital Ocean client in Haskell";
        description = "HDO is a client to <https://www.digitalocean.com/ Digital Ocean> API. It can either\nbe used as a library embedded in other tools or as a command-line client (@docean@).";
        buildType = "Simple";
      };
      components = {
        "hdo" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.comonad
            hsPkgs.data-default
            hsPkgs.free
            hsPkgs.http-conduit
            hsPkgs.iproute
            hsPkgs.lens
            hsPkgs.pretty
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.parsec
            hsPkgs.random
            hsPkgs.text
            hsPkgs.tagged
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.process
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          "docean" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hdo
              hsPkgs.comonad
              hsPkgs.iproute
              hsPkgs.pretty
              hsPkgs.unordered-containers
              hsPkgs.optparse-applicative
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.network-uri
              hsPkgs.aeson
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.free
              hsPkgs.data-default
              hsPkgs.random
              hsPkgs.text
            ];
          };
        };
      };
    }