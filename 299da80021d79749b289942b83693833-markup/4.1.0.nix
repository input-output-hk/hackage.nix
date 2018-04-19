{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "markup";
          version = "4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018 Athan Clark";
        maintainer = "athan.clark@localcooking.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/markup#readme";
        url = "";
        synopsis = "Abstraction for HTML-embedded content";
        description = "Please see the README on Github at <https://github.com/githubuser/markup#readme>";
        buildType = "Simple";
      };
      components = {
        markup = {
          depends  = [
            hsPkgs.attoparsec-uri
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.clay
            hsPkgs.comonad
            hsPkgs.lucid
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.path
            hsPkgs.path-extra
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.urlpath
          ];
        };
      };
    }