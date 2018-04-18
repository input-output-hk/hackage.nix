{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hstats";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007, SFTank";
        maintainer = "mbeddoe@<nospam>sftank.net";
        author = "Marshall Beddoe";
        homepage = "http://www.sftank.net";
        url = "";
        synopsis = "Statistical Computing in Haskell";
        description = "A library of commonly used statistical functions";
        buildType = "Custom";
      };
      components = {
        hstats = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
        };
      };
    }