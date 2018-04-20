{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-hastache";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Dan Frumin <difrumin@gmail.com>";
        maintainer = "difrumin@gmail.com";
        author = "Dan Frumin";
        homepage = "https://github.com/co-dan/scotty-hastache";
        url = "";
        synopsis = "Easy Mustache templating support for Scotty";
        description = "This library provides a small templating DSL extension\nfor Scotty via the `hastache` library.\n\n[Scotty] is a light-weighted Web framework\\/router <http://hackage.haskell.org/package/scotty>\n\n[Hashache] is a Haskell implementation of the Mustache templates: <http://mustache.github.io/>, <http://hackage.haskell.org/package/hastache>";
        buildType = "Simple";
      };
      components = {
        scotty-hastache = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.hastache
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.scotty
            hsPkgs.wai
            hsPkgs.warp
          ];
        };
      };
    }