{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "crc16"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Joris Putcuyps";
      maintainer = "Joris.Putcuyps@gmail.com";
      author = "Joris Putcuyps";
      homepage = "";
      url = "";
      synopsis = "Calculate the crc16-ccitt.";
      description = "This module provides a method to calculate the crc16-ccitt using the slow bit shift.";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      };
    }