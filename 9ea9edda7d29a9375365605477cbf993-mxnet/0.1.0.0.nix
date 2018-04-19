{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mxnet";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016-2017 Tao He";
        maintainer = "sighingnow@gmail.com";
        author = "Tao He";
        homepage = "http://github.com/sighingnow/mxnet-haskell#readme";
        url = "";
        synopsis = "MXNet interface in Haskell.";
        description = "MXNet interface in Haskell via CFFI.";
        buildType = "Simple";
      };
      components = {
        mxnet = {
          depends  = [
            hsPkgs.base
            hsPkgs.c2hs-extra
          ];
          libs = [ pkgs.mxnet ];
        };
      };
    }