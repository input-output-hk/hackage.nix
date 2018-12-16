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
      specVersion = "1.6";
      identifier = {
        name = "simple-stacked-vm";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "";
      url = "";
      synopsis = "Simple stacked virtual machine: assembler, disassembler, bytecode interpreter";
      description = "This is a simple stacked virtual machine. It works like Forth or JVM.\nThis package includes declarations of data types, assembler, disassembler,\nand bytecode interpreter.";
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
          (hsPkgs.binary-state)
          (hsPkgs.array)
        ];
      };
      exes = { "ssvm" = {}; };
    };
  }