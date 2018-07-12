{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-rst";
          version = "0.2.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Pascal Wittmann <mail@pascal-wittmann.de>";
        author = "Pascal Wittmann (based on code from Patrick Brisbin)";
        homepage = "http://github.com/pSub/yesod-rst";
        url = "";
        synopsis = "Tools for using reStructuredText (RST) in a yesod application";
        description = "A subset of pandoc functionality useful for RST processing in yesod applications";
        buildType = "Simple";
      };
      components = {
        "yesod-rst" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.pandoc
            hsPkgs.blaze-html
            hsPkgs.xss-sanitize
            hsPkgs.directory
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.hamlet
            hsPkgs.persistent
          ];
        };
      };
    }