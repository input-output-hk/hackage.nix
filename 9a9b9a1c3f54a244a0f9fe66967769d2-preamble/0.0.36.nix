{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "preamble";
          version = "0.0.36";
        };
        license = "MIT";
        copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/swift-nav/preamble";
        url = "";
        synopsis = "Yet another prelude.";
        description = "A prelude built on basic-prelude.";
        buildType = "Simple";
      };
      components = {
        "preamble" = {
          depends  = [
            hsPkgs.MonadRandom
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-manipulate
            hsPkgs.time
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.uuid
          ];
        };
        exes = {
          "shake-preamble" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shakers
            ];
          };
        };
      };
    }