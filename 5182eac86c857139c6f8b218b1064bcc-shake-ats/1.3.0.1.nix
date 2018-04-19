{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "shake-ats";
          version = "1.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/shake-ats#readme";
        url = "";
        synopsis = "Utilities for building ATS projects with shake";
        description = "Various helper functions for building [ATS](http://www.ats-lang.org/) with the [shake](http://shakebuild.com/) library";
        buildType = "Simple";
      };
      components = {
        shake-ats = {
          depends  = [
            hsPkgs.base
            hsPkgs.language-ats
            hsPkgs.shake-ext
            hsPkgs.hs2ats
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.shake
            hsPkgs.binary
          ];
        };
      };
    }