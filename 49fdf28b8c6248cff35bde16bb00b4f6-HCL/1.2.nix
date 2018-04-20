{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HCL";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgbailey _ gmail _ com";
        author = "Justin Bailey";
        homepage = "";
        url = "";
        synopsis = "High-level library for building command line interfaces.";
        description = "This module provides a set of functions for building simple command-line\ninterfaces. It allows interfaces which collect values (such as Integers,\nDates, or other structured values), build lists of values, and use simple\nmenus. It is not intended to build complex interfaces with full cursor\ncontrol. It is oriented towards line-based interfaces.";
        buildType = "Custom";
      };
      components = {
        HCL = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.mtl
          ];
        };
        exes = {
          hangman = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.mtl
            ];
          };
        };
      };
    }