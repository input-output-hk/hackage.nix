{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "macho";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Erik Charlebois";
        maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
        author = "Erik Charlebois";
        homepage = "";
        url = "";
        synopsis = "Parser for Mach-O object format.";
        description = "Parser for Mach-O object format.";
        buildType = "Custom";
      };
      components = {
        macho = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }