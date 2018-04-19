{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      containers = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unicode-symbols";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Roel van Dijk";
        maintainer = "vandijk.roel@gmail.com";
        author = "Roel van Dijk";
        homepage = "";
        url = "";
        synopsis = "Unicode alternatives for common functions and operators";
        description = "This package defines new symbols for a number of functions and\noperators in the base package and optionally for the containers\npackage.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.\n\nThis package was inspired by unicode-prelude from P&#xE9;ter\nDivi&#xE1;nszky:\n<http://hackage.haskell.org/package/unicode-prelude>";
        buildType = "Simple";
      };
      components = {
        unicode-symbols = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals _flags.containers [
            hsPkgs.containers
            hsPkgs.containers
          ];
        };
      };
    }