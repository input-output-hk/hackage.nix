{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tn";
          version = "4.1.0.0";
        };
        license = "ISC";
        copyright = "Copyright (c) 2014-2016, Peter Harpending.";
        maintainer = "peter@harpending.org";
        author = "Peter Harpending";
        homepage = "https://github.com/pharpend/tn";
        url = "";
        synopsis = "A simple daily journal program";
        description = "tn is a simple program to keep journals.";
        buildType = "Simple";
      };
      components = {
        tn = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.file-embed
            hsPkgs.text
            hsPkgs.time
            hsPkgs.optparse-simple
            hsPkgs.pager
            hsPkgs.vector
            hsPkgs.yaml
          ];
        };
        exes = {
          tn = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.optparse-applicative
              hsPkgs.optparse-helper
              hsPkgs.tn
            ];
          };
        };
      };
    }