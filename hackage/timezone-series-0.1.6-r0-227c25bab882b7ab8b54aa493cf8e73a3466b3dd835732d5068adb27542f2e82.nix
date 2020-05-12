{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { time_pre_1_6 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "timezone-series"; version = "0.1.6"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ];
        buildable = true;
        };
      };
    }