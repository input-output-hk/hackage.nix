{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hstats";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008, Marshall Beddoe";
        maintainer = "bash@chordify.net";
        author = "Marshall Beddoe";
        homepage = "https://github.com/haas/hstats";
        url = "";
        synopsis = "Statistical Computing in Haskell";
        description = "A library of commonly used statistical functions";
        buildType = "Simple";
      };
      components = {
        hstats = {
          depends  = [ hsPkgs.base ];
        };
      };
    }