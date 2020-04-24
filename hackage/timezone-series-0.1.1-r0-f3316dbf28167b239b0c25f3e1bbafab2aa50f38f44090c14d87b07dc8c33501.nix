{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "timezone-series"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Yitzchak Gale. All rights reserved.";
      maintainer = "yitz@community.haskell.org";
      author = "Yitzchak Gale";
      homepage = "http://projects.haskell.org/time-ng/";
      url = "";
      synopsis = "Enhanced timezone handling for Data.Time";
      description = "This package endows Data.Time, from the time\npackage, with several data types and functions\nfor enhanced processing of timezones. For one way\nto create timezone series, see the timezone-olson\npackage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }