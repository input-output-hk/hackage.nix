{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json2-hdbc";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Yuriy Iskra";
        maintainer = "YuriyIskra  <iskra.yw@gmail.com>";
        author = "YuriyIskra";
        homepage = "";
        url = "";
        synopsis = "Support JSON for SQL Database.";
        description = "Library contains instances of ToJson(JSON2) class\nfor SqlValue(HDBC) and functions for manipulation\nJSON.";
        buildType = "Simple";
      };
      components = {
        json2-hdbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.json2
            hsPkgs.json2-types
            hsPkgs.utf8-string
            hsPkgs.HDBC
          ];
        };
      };
    }