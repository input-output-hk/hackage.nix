{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "parseargs";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008 Bart Massey";
        maintainer = "Bart Massey <bart@cs.pdx.edu>";
        author = "Bart Massey <bart@cs.pdx.edu>";
        homepage = "http://wiki.cs.pdx.edu/bartforge/parseargs";
        url = "";
        synopsis = "Command-line argument parsing library for Haskell programs";
        description = "Parse command-line arguments";
        buildType = "Simple";
      };
      components = {
        parseargs = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          parseargs-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
            ];
          };
        };
      };
    }