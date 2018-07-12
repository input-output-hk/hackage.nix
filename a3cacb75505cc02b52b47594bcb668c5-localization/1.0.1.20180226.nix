{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "localization";
          version = "1.0.1.20180226";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Julien Moutinho <julm+localization@autogeree.net>";
        author = "Julien Moutinho <julm+localization@autogeree.net>";
        homepage = "";
        url = "";
        synopsis = "Library for localization (l10n)";
        description = "This is a library to manage localization (l10n) of messages\naccording to some (builtin or user-defined) locales.\n\nThe type system ensures that each message has a localization\nfor each of the wanted locales.\n\nMessages can be declared using a data type or a type class,\nand then rendered to the wanted output type, using 'localize' (resp. 'loqualize').\n\nFor examples, see the source code of @Data.Locale.Tutorial@.";
        buildType = "Simple";
      };
      components = {
        "localization" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }