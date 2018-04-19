{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "blaze-html-hexpat";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Jasper Van der Jeugt";
        maintainer = "Jasper Van der Jeugt <jaspervdj@gmail.com>";
        author = "Jasper Van der Jeugt, Doug Beardsley";
        homepage = "https://github.com/jaspervdj/blaze-html-hexpat";
        url = "";
        synopsis = "A hexpat backend for blaze-html.";
        description = "Allows you to generate hexpat node trees using blaze\nsyntax.";
        buildType = "Simple";
      };
      components = {
        blaze-html-hexpat = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.blaze-html
            hsPkgs.hexpat
          ];
        };
      };
    }