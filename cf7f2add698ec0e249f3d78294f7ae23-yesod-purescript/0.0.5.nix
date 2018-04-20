{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-purescript";
          version = "0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mpietrzak@gmail.com";
        author = "Maciej Pietrzak";
        homepage = "https://github.com/mpietrzak/yesod-purescript";
        url = "";
        synopsis = "PureScript integration for Yesod";
        description = "PureScript is an awesome statically typed language that compiles to JS and runs in your browser, and this module makes it easier to use PureScript in Yesod.";
        buildType = "Simple";
      };
      components = {
        yesod-purescript = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.formatting
            hsPkgs.fsnotify
            hsPkgs.mtl
            hsPkgs.purescript
            hsPkgs.regex-tdfa
            hsPkgs.regex-tdfa-text
            hsPkgs.shakespeare
            hsPkgs.text
            hsPkgs.time
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.yesod-core
          ];
        };
      };
    }