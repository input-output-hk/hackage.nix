{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "marvin";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Justus Adam";
        maintainer = "dev@justus.science";
        author = "JustusAdam";
        homepage = "https://marvin.readthedocs.io";
        url = "";
        synopsis = "A modular chat bot";
        description = "A framework for writing portable chat bots. Inspired by hubot. The documentation is on readthedocs: <https://marvin.readthedocs.io>";
        buildType = "Simple";
      };
      components = {
        "marvin" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.text-icu
            hsPkgs.vector
            hsPkgs.optparse-applicative
            hsPkgs.configurator
            hsPkgs.bytestring
            hsPkgs.async
            hsPkgs.monad-logger
            hsPkgs.websockets
            hsPkgs.network-uri
            hsPkgs.wuss
            hsPkgs.random
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.stm
            hsPkgs.marvin-interpolate
            hsPkgs.lifted-base
            hsPkgs.lifted-async
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.warp-tls
            hsPkgs.haskeline
            hsPkgs.monad-loops
            hsPkgs.time
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.deepseq
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.http-client-tls
          ];
        };
        exes = {
          "marvin-pp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mustache
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.marvin
              hsPkgs.configurator
              hsPkgs.optparse-applicative
              hsPkgs.bytestring
              hsPkgs.mono-traversable
              hsPkgs.text
              hsPkgs.aeson
            ];
          };
          "marvin-init" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mustache
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.mono-traversable
              hsPkgs.text
            ];
          };
        };
      };
    }