{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-links";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@pbrisbin.com";
        author = "Patrick Brisbin";
        homepage = "http://github.com/pbrisbin/yesod-goodies/yesod-links";
        url = "";
        synopsis = "A typeclass which simplifies creating link widgets throughout your site";
        description = "A yesod goody, yesod links";
        buildType = "Simple";
      };
      components = {
        "yesod-links" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.yesod-core
          ];
        };
      };
    }