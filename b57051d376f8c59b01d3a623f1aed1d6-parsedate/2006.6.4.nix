{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "parsedate";
          version = "2006.6.4";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert";
        maintainer = "bjorn@bringert.net";
        author = "Bjorn Bringert";
        homepage = "http://www.cs.chalmers.se/~bringert/darcs/parsedate/doc/";
        url = "";
        synopsis = "Haskell library for parsing dates and times";
        description = "This library provides a function for parsing dates and times\ngiven a date format string.";
        buildType = "Custom";
      };
      components = {
        "parsedate" = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }