{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "system-command";
        version = "0.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2009-2014 Tony Morris, Ben Sinclair";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/command";
      url = "";
      synopsis = "A replacement for System.Exit and System.Process";
      description = "Specifically, this library replaces @System.Exit.ExitCode@ with an abstract data type.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }