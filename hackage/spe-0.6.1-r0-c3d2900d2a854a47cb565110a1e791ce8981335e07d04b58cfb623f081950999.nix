{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "spe";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/spe";
      url = "";
      synopsis = "Combinatorial species lite";
      description = "A simple library for combinatorial species with no\ndependencies but base. See <http://github.com/akc/spe>\nfor an introduction and examples.\nIf you want something more substantial, then you\nwill most likely be happier with the excellent\nspecies package by Brent Yorgey:\n<http://hackage.haskell.org/package/species>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }