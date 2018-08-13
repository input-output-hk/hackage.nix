{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "parsedate";
        version = "3000.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "http://www.cs.chalmers.se/~bringert/darcs/parsedate/doc/";
      url = "";
      synopsis = "Data and time parsing for CalendarTime";
      description = "This library provides a function for parsing dates and times\ngiven a date format string.\nThis package creates CalendarTime values and is meant\nfor use with the old-time package. New code should\nuse the time package, which now includes parsing, instead.";
      buildType = "Simple";
    };
    components = {
      "parsedate" = {
        depends  = [
          (hsPkgs.parsec)
        ] ++ (if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }