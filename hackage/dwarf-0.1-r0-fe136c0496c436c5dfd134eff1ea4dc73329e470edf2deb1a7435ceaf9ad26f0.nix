{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "dwarf";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
      author = "Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "Parser for DWARF debug format.";
      description = "Parser for DWARF debug format.";
      buildType = "Custom";
    };
    components = {
      "dwarf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
        ];
      };
    };
  }