{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ecu";
        version = "0.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tools for automotive ECU development.";
      description = "A collection of tools developed and used by Eaton's\nelectro-hydraulic software engineers.  Most of these tools\nare for interacting with vehicle electronic\ncontrol units (ECUs) via a CAN bus.\nThis package requires the Kvaser canlib library: http://www.kvaser.com/";
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
        "decomp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
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
        "ccp" = {
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
        "parsedbc" = {
          depends  = [ (hsPkgs.base) ];
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