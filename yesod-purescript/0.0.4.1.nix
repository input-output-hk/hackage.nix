{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-purescript";
          version = "0.0.4.1";
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
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.formatting
            hsPkgs.fsnotify
            hsPkgs.parsec
            hsPkgs.purescript
            hsPkgs.shakespeare
            hsPkgs.text
            hsPkgs.time
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.yesod-core
          ];
        };
      };
    }