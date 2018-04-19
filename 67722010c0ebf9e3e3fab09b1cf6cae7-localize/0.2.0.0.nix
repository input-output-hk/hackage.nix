{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "localize";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "";
        url = "";
        synopsis = "GNU Gettext-based messages localization library";
        description = "More or less fully functional translation framework,\nbased on @haskell-gettext@ and @text-format-heavy@\npackages.";
        buildType = "Simple";
      };
      components = {
        localize = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.data-default
            hsPkgs.containers
            hsPkgs.text-format-heavy
            hsPkgs.haskell-gettext
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.Glob
            hsPkgs.setlocale
          ];
        };
      };
    }