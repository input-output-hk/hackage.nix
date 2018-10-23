{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "elf";
        version = "0.28";
      };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Baojun Wang <wangbj@gmail.com>";
      author = "Erik Charlebois";
      homepage = "https://github.com/wangbj/elf";
      url = "";
      synopsis = "Parser for ELF object format.";
      description = "Parser for ELF object format.";
      buildType = "Custom";
    };
    components = {
      "elf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }