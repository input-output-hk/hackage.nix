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
        name = "disassembler";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Martin Grabmueller <martin@grabmueller.de>";
      author = "Martin Grabmueller <martin@grabmueller.de>, Dirk Kleeblatt <klee@cs.tu-berlin.de>";
      homepage = "https://github.com/mgrabmueller/disassembler";
      url = "";
      synopsis = "Disassembler for X86 & AMD64 machine code";
      description = "Disassembler for X86 & AMD64 machine code";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ];
      };
    };
  }