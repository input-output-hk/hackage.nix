{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "simple-pascal"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "";
      url = "";
      synopsis = "Simplified Pascal language to SSVM compiler";
      description = "This package provides a compiler for simplified variant of Pascal language.\nThat language includes conditional statements, for loops, procedures and\nfunctions. But it does not support complex data types (only integer, string\nand boolean are supported currently).\nThis compiler outputs bytecode which may be run by SSVM (see simple-stacked-vm\npackage).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.simple-stacked-vm)
          ];
        };
      exes = { "spc" = {}; };
      };
    }