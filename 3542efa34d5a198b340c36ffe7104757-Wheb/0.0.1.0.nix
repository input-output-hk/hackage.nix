{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Wheb";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hanooter@gmail.com";
        author = "Kyle Hanson";
        homepage = "https://github.com/hansonkd/Wheb-Framework";
        url = "";
        synopsis = "The easy Haskell WAI Framework";
        description = "";
        buildType = "Simple";
      };
      components = {
        "Wheb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.data-default
            hsPkgs.wai-extra
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.cookie
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.warp
            hsPkgs.conduit
            hsPkgs.case-insensitive
            hsPkgs.pwstore-fast
            hsPkgs.uuid
            hsPkgs.stm
          ];
        };
      };
    }