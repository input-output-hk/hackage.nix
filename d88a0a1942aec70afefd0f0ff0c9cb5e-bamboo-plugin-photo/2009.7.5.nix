{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamboo-plugin-photo";
          version = "2009.7.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "A photo album middleware";
        description = "It checks for a plugin tag in html and generate a photo album with thumbnails in place, by some internal IO options. The current version makes some assumptions on where the photo should be stored, so it's mostly useful for bamboo. A download of appropriate javascript is required, e.g. innerfade.js.";
        buildType = "Simple";
      };
      components = {
        "bamboo-plugin-photo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mps
            hsPkgs.hack
            hsPkgs.hack-contrib
            hsPkgs.data-default
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.haskell98
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.xhtml
            hsPkgs.hxt
          ];
        };
      };
    }