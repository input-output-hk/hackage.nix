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
      specVersion = "1.10.2.0";
      identifier = {
        name = "Pup-Events";
        version = "1.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Daniel Wilson";
      maintainer = "wilsonhardrock@gmail.com";
      author = "Daniel Wilson";
      homepage = "";
      url = "";
      synopsis = "A networked event handling framework for hooking\ninto other programs.";
      description = "Pup-Events is a networking enabled event handling\nframework. This is a virtual package to install all\nof the Pup-Events modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Pup-Events-Server)
          (hsPkgs.Pup-Events-Client)
          (hsPkgs.Pup-Events-PQueue)
        ];
      };
      exes = {
        "pupevents-all" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }