{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "crc16";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Joris Putcuyps";
        maintainer = "Joris.Putcuyps@gmail.com";
        author = "Joris Putcuyps";
        homepage = "";
        url = "";
        synopsis = "Calculate the crc16-ccitt.";
        description = "This module provides a method to calculate the crc16-ccitt using the slow bit shift way.";
        buildType = "Custom";
      };
      components = {
        crc16 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.HUnit
          ];
        };
      };
    }