{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "zeromq3-conduit";
          version = "0.1.0.0";
        };
        license = "LGPL-2.1-only";
        copyright = "Copyright (c) 2012, Nicolas Trangez";
        maintainer = "ikke@nicolast.be";
        author = "Nicolas Trangez";
        homepage = "https://github.com/NicolasT/zeromq3-conduit";
        url = "";
        synopsis = "Conduit bindings for zeromq3-haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        zeromq3-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.resourcet
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.zeromq3-haskell
          ];
        };
      };
    }