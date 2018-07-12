{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hakyll-blaze-templates";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "git@kazlauskas.me";
        author = "Simonas Kazlauskas";
        homepage = "";
        url = "";
        synopsis = "Blaze templates for Hakyll";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hakyll-blaze-templates" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hakyll
            hsPkgs.blaze-html
          ];
        };
      };
    }