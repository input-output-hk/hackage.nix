{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "elf";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Erik Charlebois";
        maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
        author = "Erik Charlebois";
        homepage = "";
        url = "";
        synopsis = "Parser for ELF object format.";
        description = "Parser for ELF object format.";
        buildType = "Custom";
      };
      components = {
        elf = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }