{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-form-richtext";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2017 Arthur S. Fayzrakhmanov";
        maintainer = "heraldhoi@gmail.com";
        author = "Arthur S. Fayzrakhmanov";
        homepage = "http://github.com/geraldus/yesod-form-richtext#readme";
        url = "";
        synopsis = "Various rich-text WYSIWYG editors for Yesod forms.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        yesod-form-richtext = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.shakespeare
            hsPkgs.text
            hsPkgs.xss-sanitize
            hsPkgs.yesod-core
            hsPkgs.yesod-form
          ];
        };
      };
    }