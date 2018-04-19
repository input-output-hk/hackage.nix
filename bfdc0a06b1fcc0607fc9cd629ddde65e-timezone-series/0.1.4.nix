{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timezone-series";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010-2014 Yitzchak Gale. All rights reserved.";
        maintainer = "yitz@sefer.org";
        author = "Yitzchak Gale";
        homepage = "http://projects.haskell.org/time-ng/";
        url = "";
        synopsis = "Enhanced timezone handling for Data.Time";
        description = "This package endows Data.Time, from the time\npackage, with several data types and functions\nfor enhanced processing of timezones. For one way\nto create timezone series, see the timezone-olson\npackage.";
        buildType = "Simple";
      };
      components = {
        timezone-series = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }