{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "polar-configfile";
        version = "0.1.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.MissingH)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.HUnit)
            (hsPkgs.testpack)
          ];
        };
      };
    };
  }