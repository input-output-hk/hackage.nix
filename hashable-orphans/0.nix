{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hashable-orphans";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "davean 2017";
        maintainer = "oss@xkcd.com";
        author = "davean";
        homepage = "https://oss.xkcd.com/";
        url = "";
        synopsis = "Provides instances missing from Hashable.";
        description = "This package provides instances missing from <http://hackage.haskell.org/package/hashable hashable>, specificly ones for types from <http://hackage.haskell.org/package/time time> ('DiffTime', 'UTCTime') and <http://hackage.haskell.org/package/sorted-list sorted-list> at present.";
        buildType = "Simple";
      };
      components = {
        hashable-orphans = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.sorted-list
            hsPkgs.time
          ];
        };
      };
    }