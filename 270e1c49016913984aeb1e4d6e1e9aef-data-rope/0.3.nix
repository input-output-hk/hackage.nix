{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-rope";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Ropes, an alternative to (Byte)Strings.";
        description = "Ropes : an alternative to Strings,\na time and space-efficient representation of character\nstrings.";
        buildType = "Simple";
      };
      components = {
        data-rope = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring-mmap
            hsPkgs.bytestring
            hsPkgs.unix
          ];
        };
      };
    }