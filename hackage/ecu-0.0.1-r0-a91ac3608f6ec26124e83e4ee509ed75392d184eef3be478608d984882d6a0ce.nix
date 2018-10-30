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
      specVersion = "1.6";
      identifier = {
        name = "ecu";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tools for automotive ECU development.";
      description = "This is a collection of tools developed and used by Eaton's\nelectro-hydraulic software engineers.  Most tools is this\ncollection are for interacting with, and analyzing vehicle\nECU data via a CAN bus.\nThese tools require the Kvaser canlib library: http://www.kvaser.com/";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tovcd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.vcd)
          ];
        };
        "cansend" = {
          depends  = [ (hsPkgs.base) ];
          libs = [ (pkgs."canlib") ];
        };
        "canview" = {
          depends  = [ (hsPkgs.base) ];
          libs = [ (pkgs."canlib") ];
        };
        "probe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.digest)
            (hsPkgs.vcd)
          ];
          libs = [ (pkgs."canlib") ];
        };
        "toesb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.digest)
          ];
        };
        "commit" = {
          depends  = [ (hsPkgs.base) ];
        };
        "git2cc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }