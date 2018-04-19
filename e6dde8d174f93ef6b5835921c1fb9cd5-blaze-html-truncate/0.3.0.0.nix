{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blaze-html-truncate";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m [dot] ruegenberg [at] picodesign [dot] de";
        author = "Marcel Ruegenberg";
        homepage = "http://github.com/mruegenberg/blaze-html-truncate";
        url = "";
        synopsis = "A truncator for blaze-html";
        description = "This package provides a simple function to truncate HTML, preserving tags and preventing cut-off words.";
        buildType = "Simple";
      };
      components = {
        blaze-html-truncate = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.tagsoup
            hsPkgs.html-truncate
          ];
        };
      };
    }