{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yajl";
          version = "0.3.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "http://ianen.org/haskell/bindings/yajl/";
        url = "";
        synopsis = "Bindings for YAJL, an event-based JSON implementation";
        description = "";
        buildType = "Simple";
      };
      components = {
        yajl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
          libs = [ pkgs.yajl ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }