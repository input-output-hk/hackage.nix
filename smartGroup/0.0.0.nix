{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "smartGroup";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "amsay@amsay.net";
        author = "Sam Anklesaria";
        homepage = "http://patch-tag.com/r/salazar/smartgroup";
        url = "";
        synopsis = "group strings by words in common";
        description = "Given a list of strings, smartGroup provides a set of functions\nto group them into smaller lists based on the most common words of the set.";
        buildType = "Simple";
      };
      components = {
        smartGroup = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.heap
          ];
        };
      };
    }