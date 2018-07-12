{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "basic-cpuid";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Anselm Jonas Scholl";
        maintainer = "anselm.scholl@tu-harburg.de";
        author = "Anselm Jonas Scholl";
        homepage = "";
        url = "";
        synopsis = "A small package to access the cpuid instruction directly.";
        description = "Similar to the cpuid package this package allows one to\ncall the CPUID instruction from plain Haskell. In contrast\nto the cpuid package it is very minimalistic and provides\nno additional helper functions. On the other side it is\npossible to build this package on every platform. If the\nplatform does not support the CPUID instruction, calling\nit from Haskell will just throw an exception.";
        buildType = "Simple";
      };
      components = {
        "basic-cpuid" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }