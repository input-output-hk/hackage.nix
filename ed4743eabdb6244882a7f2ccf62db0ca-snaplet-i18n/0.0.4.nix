{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-i18n";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Haisheng Wu";
        maintainer = "freizl@gmail.com";
        author = "Haisheng,Wu";
        homepage = "https://github.com/HaskellCNOrg/snaplet-i18n";
        url = "";
        synopsis = "snaplet-i18n";
        description = "A light weight i18n snaplet.";
        buildType = "Simple";
      };
      components = {
        snaplet-i18n = {
          depends  = [
            hsPkgs.base
            hsPkgs.configurator
            hsPkgs.filepath
            hsPkgs.heist
            hsPkgs.lens
            hsPkgs.snap
            hsPkgs.snap-loader-static
            hsPkgs.text
            hsPkgs.xmlhtml
          ];
        };
      };
    }