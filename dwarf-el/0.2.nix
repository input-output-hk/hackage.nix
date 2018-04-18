{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dwarf-el";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Eyal Lotem, Erik Charlebois";
        maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
        author = "Eyal Lotem, Erik Charlebois";
        homepage = "";
        url = "";
        synopsis = "Parser for DWARF debug format.";
        description = "Parser for DWARF debug format.";
        buildType = "Simple";
      };
      components = {
        dwarf-el = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.utf8-string
          ];
        };
      };
    }