{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "omaketex";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Hiromi ISHII 2013";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "https://github.com/pcapriotti/omaketex";
        url = "";
        synopsis = "A simple tool to generate OMakefile for latex files.";
        description = "A simple toot to generate OMakefile for latex files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          omaketex = {
            depends  = [
              hsPkgs.base
              hsPkgs.shakespeare-text
              hsPkgs.optparse-applicative
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
        };
      };
    }