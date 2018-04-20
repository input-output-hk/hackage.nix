{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "spe";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anders.claesson@gmail.com";
        author = "Anders Claesson";
        homepage = "http://github.com/akc/spe";
        url = "";
        synopsis = "Combinatorial species lite";
        description = "A simple library for combinatorial species with no\ndependencies but base. If you want something more\nsubstantial, then you will most likely be happier\nwith the excellent species package by Brent Yorgey:\n<http://hackage.haskell.org/package/species>";
        buildType = "Simple";
      };
      components = {
        spe = {
          depends  = [ hsPkgs.base ];
        };
      };
    }