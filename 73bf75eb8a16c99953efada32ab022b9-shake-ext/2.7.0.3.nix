{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "shake-ext";
          version = "2.7.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://hub.darcs.net/vmchale/shake-ext";
        url = "";
        synopsis = "Helper functions for linting with shake";
        description = "This package provides several linters out of the box, for use with [shake](http://shakebuild.com/).";
        buildType = "Simple";
      };
      components = {
        shake-ext = {
          depends  = [
            hsPkgs.base
            hsPkgs.shake
            hsPkgs.composition-prelude
            hsPkgs.directory
            hsPkgs.Cabal
            hsPkgs.template-haskell
          ];
        };
      };
    }