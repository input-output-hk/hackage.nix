{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-zlib";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Paolo Capriotti 2012,\nRenzo Carbonara 2013-2014";
        maintainer = "renzocarbonaraλgmail.com";
        author = "Renzo Carbonara, Paolo Capriotti";
        homepage = "https://github.com/k0001/pipes-zlib";
        url = "";
        synopsis = "Zlib compression and decompression for Pipes streams";
        description = "Zlib compression and decompression for Pipes streams";
        buildType = "Simple";
      };
      components = {
        "pipes-zlib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.pipes
            hsPkgs.bytestring
            hsPkgs.zlib
            hsPkgs.zlib-bindings
          ];
        };
      };
    }