{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yajl";
          version = "0.3.0.3";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
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
        };
      };
    }