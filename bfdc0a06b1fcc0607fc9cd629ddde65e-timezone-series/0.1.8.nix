{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      time_pre_1_6 = false;
      time_1_6_and_1_7 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timezone-series";
          version = "0.1.8";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010-2015 Yitzchak Gale. All rights reserved.";
        maintainer = "yitz@sefer.org";
        author = "Yitzchak Gale";
        homepage = "http://projects.haskell.org/time-ng/";
        url = "";
        synopsis = "Enhanced timezone handling for Data.Time";
        description = "This package endows Data.Time, from the time\npackage, with several data types and functions\nfor enhanced processing of timezones. For one way\nto create timezone series, see the timezone-olson\n(<http://hackage.haskell.org/package/timezone-olson>)\nand timezone-olson-th\n(<http://hackage.haskell.org/package/timezone-olson-th>)\npackages.";
        buildType = "Simple";
      };
      components = {
        timezone-series = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ] ++ [ hsPkgs.time ];
        };
      };
    }