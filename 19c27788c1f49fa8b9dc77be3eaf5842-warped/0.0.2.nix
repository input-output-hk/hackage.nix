{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "warped";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "Copyright (C) 2018 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/swift-nav/warped";
        url = "";
        synopsis = "Warp and Wai Library.";
        description = "Library support around WAI and warp server.";
        buildType = "Simple";
      };
      components = {
        warped = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.preamble
            hsPkgs.uuid
            hsPkgs.wai
            hsPkgs.wai-conduit
            hsPkgs.wai-cors
            hsPkgs.warp
          ];
        };
        exes = {
          shake-wolf = {
            depends  = [
              hsPkgs.base
              hsPkgs.shakers
            ];
          };
        };
      };
    }