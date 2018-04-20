{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pecoff";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Erik Charlebois";
        maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
        author = "Erik Charlebois";
        homepage = "";
        url = "";
        synopsis = "Parser for PE/COFF format.";
        description = "Parser for PE/COFF format.";
        buildType = "Custom";
      };
      components = {
        pecoff = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.binary
          ];
        };
      };
    }