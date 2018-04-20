{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hpuz";
          version = "1.0.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) Chris Casinghino 2009-2010";
        maintainer = "chris.casinghino@gmail.com";
        author = "Chris Casinghino";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings for libpuz";
        description = "Provides support for reading and writing the .puz crossword puzzle\nformat from haskell.";
        buildType = "Simple";
      };
      components = {
        hpuz = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.parsec
          ];
        };
      };
    }