{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-comments";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@pbrisbin.com";
        author = "Patrick Brisbin";
        homepage = "http://github.com/pbrisbin/yesod-comments";
        url = "";
        synopsis = "A generic comments interface for a Yesod application";
        description = "A generic comments interface for a Yesod application";
        buildType = "Simple";
      };
      components = {
        yesod-comments = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.friendly-time
            hsPkgs.gravatar
            hsPkgs.persistent
            hsPkgs.wai
            hsPkgs.yesod
            hsPkgs.yesod-auth
            hsPkgs.yesod-form
            hsPkgs.yesod-markdown
            hsPkgs.template-haskell
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
      };
    }