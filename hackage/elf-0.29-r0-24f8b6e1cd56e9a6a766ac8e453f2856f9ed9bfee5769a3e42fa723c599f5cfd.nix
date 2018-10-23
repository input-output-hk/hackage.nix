{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "elf";
        version = "0.29";
      };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Baojun Wang <wangbj@gmail.com>";
      author = "Erik Charlebois";
      homepage = "https://github.com/wangbj/elf";
      url = "";
      synopsis = "An Elf parser";
      description = "Parser for ELF object format.";
      buildType = "Simple";
    };
    components = {
      "elf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.elf)
          ];
        };
      };
    };
  }