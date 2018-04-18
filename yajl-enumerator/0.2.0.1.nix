{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yajl-enumerator";
          version = "0.2.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Enumerator-based interface to YAJL, an event-based JSON implementation";
        description = "";
        buildType = "Simple";
      };
      components = {
        yajl-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.yajl
            hsPkgs.enumerator
            hsPkgs.transformers
          ];
        };
      };
    }