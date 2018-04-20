{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "replicant";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 James Dabbs";
        maintainer = "jamesdabbs@gmail.com";
        author = "James Dabbs";
        homepage = "https://github.com/jamesdabbs/replicant#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        replicant = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.ansi-terminal
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.hedis
            hsPkgs.hedis-namespace
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.websockets
            hsPkgs.wreq
            hsPkgs.wuss
          ];
        };
        exes = {
          replicant = {
            depends  = [
              hsPkgs.base
              hsPkgs.replicant
              hsPkgs.bytestring
              hsPkgs.hedis-namespace
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          replicant-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.replicant
            ];
          };
        };
      };
    }