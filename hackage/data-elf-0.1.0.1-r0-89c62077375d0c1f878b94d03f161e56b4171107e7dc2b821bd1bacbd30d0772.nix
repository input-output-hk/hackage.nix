{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "data-elf";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-elf";
      url = "";
      synopsis = "Executable and Linkable Format (ELF) data structures.";
      description = "This package provides Executable and Linkable Format (ELF) data structures.";
      buildType = "Simple";
    };
    components = {
      "data-elf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.data-endian)
          (hsPkgs.data-sword)
          (hsPkgs.data-flags)
          (hsPkgs.text-latin1)
        ];
      };
    };
  }