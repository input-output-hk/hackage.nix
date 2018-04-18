{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "localization";
          version = "1.0.0.20180213";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Julien Moutinho <julm+localization@autogeree.net>";
        author = "Julien Moutinho <julm+localization@autogeree.net>";
        homepage = "";
        url = "";
        synopsis = "Library for localization (l10n)";
        description = "Use advanced type-level code to check existence of localizations\n(usually a textual rendition into some human languages).";
        buildType = "Simple";
      };
      components = {
        localization = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }