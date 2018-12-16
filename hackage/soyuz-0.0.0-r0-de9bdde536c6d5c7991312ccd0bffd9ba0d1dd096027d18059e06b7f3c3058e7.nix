{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "soyuz";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Alex Kropivny <alex.kropivny@gmail.com>";
      author = "Alex Kropivny <alex.kropivny@gmail.com>";
      homepage = "https://github.com/amtal/0x10c";
      url = "";
      synopsis = "DCPU-16 architecture utilities for Notch's 0x10c game.";
      description = "Utilities for the DCPU-16 architecture, for Notch's upcoming space game, 0x10c.\n\nMeant to be a library for implementing powerful tools. As demonstrations, contains\na command-line optimizing assembler\\/disassembler\\/pretty printer.\n\nCore of the library is \"DCPU16.Instructions\". Everything else is built around it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          (hsPkgs.uniplate)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.trifecta)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.cmdargs)
        ];
      };
      exes = { "soyuz" = {}; };
    };
  }