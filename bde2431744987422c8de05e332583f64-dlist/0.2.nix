{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "dlist";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<dons@cse.unsw.edu.au>";
        author = "Don Stewart";
        homepage = "";
        url = "";
        synopsis = "Differences lists: lists supporting efficient append";
        description = "Differences lists: lists supporting efficient append";
        buildType = "Custom";
      };
      components = {
        dlist = {
          depends  = [ hsPkgs.base ];
        };
      };
    }