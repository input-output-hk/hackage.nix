{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "timezone-olson"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010-2015 Yitzchak Gale. All rights reserved.";
      maintainer = "yitz@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://projects.haskell.org/time-ng/";
      url = "";
      synopsis = "A pure Haskell parser and renderer for binary Olson timezone files";
      description = "A parser and renderer for binary Olson timezone\nfiles whose format is specified by the tzfile(5)\nman page on Unix-like systems. For more\ninformation about this format, see\n<http://www.iana.org/time-zones/repository/tz-link.html>.\nFunctions are provided for converting the parsed data into\n'TimeZoneSeries' objects from the timezone-series\npackage. On many platforms, binary Olson timezone\nfiles suitable for use with this package are\navailable in the directory /usr/share/zoneinfo\nand its subdirectories on your computer.\nFor a way to read binary Olson timezone files at compile\ntime, see the timezone-olson-th package\n(<http://hackage.haskell.org/package/timezone-olson-th>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."timezone-series" or ((hsPkgs.pkgs-errors).buildDepError "timezone-series"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          ];
        buildable = true;
        };
      };
    }