{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hakyll-elm";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2013 Max New";
        maintainer = "maxsnew@gmail.com";
        author = "Max New";
        homepage = "https://github.com/maxsnew/hakyll-elm";
        url = "";
        synopsis = "Hakyll wrapper for the Elm compiler.";
        description = "A wrapper for compiling\nElm (<http://elm-lang.org>) programs to\nhtml/javascript in a Hakyll project.\n\nCurrently supports single-module programs that\nonly import from an Elm runtime that's manually\nincluded.";
        buildType = "Simple";
      };
      components = {
        "hakyll-elm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hakyll
            hsPkgs.Elm
            hsPkgs.mtl
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
          ];
        };
      };
    }