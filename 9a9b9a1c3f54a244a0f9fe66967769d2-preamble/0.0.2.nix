{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "preamble";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/swift-nav/preamble";
        url = "";
        synopsis = "Yet another prelude.";
        description = "Yet another prelude, built on BasicPrelude.";
        buildType = "Simple";
      };
      components = {
        "preamble" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-manipulate
            hsPkgs.time
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          "shake-preamble" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.shake
            ];
          };
        };
      };
    }