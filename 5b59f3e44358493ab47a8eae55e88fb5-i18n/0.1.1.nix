{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "i18n";
          version = "0.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2008 Eugene Grigoriev";
        maintainer = "\"Eugene Grigoriev\" <eugene.grigoriev@gmail.com>";
        author = "\"Eugene Grigoriev\" <eugene.grigoriev@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Internationalization for Haskell";
        description = "Internationalization for Haskell based on GNU gettext.";
        buildType = "Custom";
      };
      components = {
        "i18n" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.utf8-string
          ];
        };
      };
    }