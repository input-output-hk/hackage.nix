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
      specVersion = "1.8";
      identifier = {
        name = "HCL";
        version = "1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Lamothe <jlamothe1980@gmail.com>";
      author = "Justin Bailey";
      homepage = "http://github.com/m4dc4p/hcl/tree/master";
      url = "";
      synopsis = "High-level library for building command line interfaces.";
      description = "This module provides a set of functions for building simple command-line\ninterfaces. It allows interfaces which collect values (such as Integers,\nDates, or other structured values), build lists of values, and use simple\nmenus. It is not intended to build complex interfaces with full cursor\ncontrol. It is oriented towards line-based interfaces.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "hangman" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.HCL)
          ];
        };
      };
      tests = {
        "HCL-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.HCL)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }