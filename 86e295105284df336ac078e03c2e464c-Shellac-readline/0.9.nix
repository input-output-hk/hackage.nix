{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Shellac-readline";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "robdockins AT fastmail DOT fm";
        author = "Robert Dockins";
        homepage = "";
        url = "";
        synopsis = "Readline backend module for Shellac";
        description = "This package provides a Shellac backend based on the GNU readline\nlibrary.  This backend features all the line editing capabilities\nprovided by readline, as well as command completion and command\nhistory features.";
        buildType = "Custom";
      };
      components = {
        Shellac-readline = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.readline
            hsPkgs.Shellac
          ];
        };
      };
    }