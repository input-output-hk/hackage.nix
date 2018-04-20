{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "xslt";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2006, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libxslt";
        description = "";
        buildType = "Custom";
      };
      components = {
        xslt = {
          depends  = [
            hsPkgs.base
            hsPkgs.libxml
          ];
          libs = [ pkgs.xslt ];
        };
      };
    }