{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      big_endian = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "ieee754";
        version = "0.7.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010. Patrick Perry <patperry@gmail.com>";
      maintainer = "Patrick Perry <patperry@gmail.com>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/hs-ieee754";
      url = "";
      synopsis = "Utilities for dealing with IEEE floating point numbers";
      description = "Utilities for dealing with IEEE floating point numbers, ported\nfrom the Tango math library; approximate and exact equality\ncomparisons for general types.";
      buildType = "Simple";
    };
    components = {
      "ieee754" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."m") ];
      };
    };
  }