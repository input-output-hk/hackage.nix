{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "libxslt";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2006, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libxslt";
        description = "Uses libxlst.";
        buildType = "Simple";
      };
      components = {
        libxslt = {
          depends  = [
            hsPkgs.base
            hsPkgs.libxml
            hsPkgs.bytestring
          ];
          libs = [ pkgs.xslt ];
        };
      };
    }