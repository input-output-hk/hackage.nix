{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "tracker";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "will@willthompson.co.uk";
        author = "Will Thompson";
        homepage = "";
        url = "";
        synopsis = "Client library for Tracker metadata database, indexer and search tool";
        description = "Client library for Tracker metadata database, indexer and search tool";
        buildType = "Simple";
      };
      components = {
        tracker = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.containers
          ];
        };
      };
    }