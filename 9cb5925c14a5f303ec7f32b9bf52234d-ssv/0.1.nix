{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "ssv";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Copyright © 2011 Bart Massey";
        maintainer = "bart@cs.pdx.edu";
        author = "Bart Massey";
        homepage = "http://wiki.cs.pdx.edu/bartforge/ssv";
        url = "http://wiki.cs.pdx.edu/cabal-packages/csvconvert-0.1.tar.gz";
        synopsis = "Comma-separated-value (CSV) read, show and write routines";
        description = "This modules provides conversion routines to and\nfrom the infamous \"comma separated value\" (CSV) format.\nIt attempts to adhere to the spirit and (mostly) to the\nletter of RFC 4180, which defines the 'text/csv' MIME\ntype.";
        buildType = "Simple";
      };
      components = {
        ssv = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          csvclean = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }