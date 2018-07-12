{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unmed2";
          version = "0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "Claude Heiland-Allen";
        homepage = "";
        url = "";
        synopsis = "Extract useful information from Amiga MED files";
        description = "MED (Music EDitor) and its successor OctaMED\nwere popular music trackers on the Amiga:\n<https://en.wikipedia.org/wiki/OctaMED>.\nThis program loads song module files from MED and OctaMED\nand show their content on standard output.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "unmed2" = {
            depends  = [
              hsPkgs.storable-endian
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }