{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json2";
          version = "0.8.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Yuriy Iskra";
        maintainer = "YuriyIskra  <iskra.yw@gmail.com>";
        author = "YuriyIskra";
        homepage = "";
        url = "";
        synopsis = "Library provides support for JSON.";
        description = "This library provides support for JSON.";
        buildType = "Simple";
      };
      components = {
        json2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.json2-types
          ];
        };
      };
    }