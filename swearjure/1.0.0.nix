{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "swearjure";
          version = "1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "jeannikl@hypirion.com";
        author = "Jean Niklas L'orange";
        homepage = "http://www.swearjure.com";
        url = "";
        synopsis = "Clojure without alphanumerics.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          swearjure = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.containers
              hsPkgs.fixplate
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.random
              hsPkgs.random-shuffle
              hsPkgs.readline
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.text
            ];
          };
        };
      };
    }