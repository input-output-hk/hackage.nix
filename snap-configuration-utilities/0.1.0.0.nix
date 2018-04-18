{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snap-configuration-utilities";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Anchor Engineering <engineering@anchor.com.au>";
        author = "Geoffrey Roberts <geoffrey.roberts@anchor.com.au>";
        homepage = "";
        url = "";
        synopsis = "Methods to manipulate Configurator objects for Snap & Snaplets";
        description = "Methods to manipulate Configurator objects for Snap & Snaplets";
        buildType = "Simple";
      };
      components = {
        snap-configuration-utilities = {
          depends  = [
            hsPkgs.base
            hsPkgs.configurator
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }