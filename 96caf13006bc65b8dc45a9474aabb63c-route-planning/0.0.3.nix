{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "route-planning";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/route";
        url = "";
        synopsis = "A library and utilities for creating a route";
        description = "A library and utilities for creating a route";
        buildType = "Custom";
      };
      components = {
        "route-planning" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.coordinate
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.xsd
            hsPkgs.text
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }