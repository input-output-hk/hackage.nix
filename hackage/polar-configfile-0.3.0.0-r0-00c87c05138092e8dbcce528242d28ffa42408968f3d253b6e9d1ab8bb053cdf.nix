{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "polar-configfile";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2004-2014 John Goerzen, 2015 David Farrell";
      maintainer = "David Farrell <shokku.ra@gmail.com>";
      author = "John Goerzen (2004-2014), David Farrell";
      homepage = "";
      url = "";
      synopsis = "Fork of ConfigFile for Polar Game Engine";
      description = "A fork of ConfigFile updated and reworked to export a more consistent API for the Polar Game Engine.";
      buildType = "Simple";
    };
    components = {
      "polar-configfile" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.MissingH)
        ];
      };
      tests = {
        "test-polar-configfile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }