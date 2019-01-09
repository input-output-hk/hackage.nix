{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "disassembler"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Martin Grabmueller <martin.grabmueller@eleven.de>";
      author = "Martin Grabmueller <martin.grabmueller@eleven.de>, Dirk Kleeblatt <klee@cs.tu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Disassembler for X86 & AMD64 machine code";
      description = "Disassembler for X86 & AMD64 machine code";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            ];
        };
      };
    }