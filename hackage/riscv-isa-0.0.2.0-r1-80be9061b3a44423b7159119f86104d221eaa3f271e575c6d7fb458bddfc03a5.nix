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
      specVersion = "1.10";
      identifier = {
        name = "riscv-isa";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Moritz Kiefer";
      maintainer = "value";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/riscv-isa#readme";
      url = "";
      synopsis = "Haskell representation of the RISC-V instruction set architecture";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }