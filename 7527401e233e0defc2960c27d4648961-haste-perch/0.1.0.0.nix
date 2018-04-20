{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haste-perch";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto G. Corona";
        homepage = "https://github.com/agocorona/haste-perch";
        url = "";
        synopsis = "Create dynamic HTML in the browser using blaze-html-style notation with Haste";
        description = "Perch defines builder elements (perchs) for Haste.DOM elements that are appendable, so that dynamic HTML can be created in the client in a natural way, like textual HTML, but programmatically and with the advantage of static type checking. It can be ported to other haskell-js compilers\n\nHaste is a compiler that generates Javascript code from Haskell.\n\nhttps://github.com/valderman/haste-compiler\n\nThe Haste.DOM module define a thin layer over the JavaScript DOM. The DOM is a low level HTML tree manipulation API. That makes the creation and manipulation of DOM elements almost as painful as in JavaScript.\n\nThis package makes the creation of DOM elements easy with a syntax similar to other haskell HTML generators, using monoids and monads, such is the case of the package blaze-html.\n\nhttp://hackage.haskell.org/package/blaze-html\n\nSince the creation is in the browser, that permit quite dynamic pages for data\npresentation, and interctive textual (a.k.a \"serious\") applications and in general\nthe development of client-side web frameworks using haskell with the haste compiler.";
        buildType = "Simple";
      };
      components = {
        haste-perch = {
          depends  = [
            hsPkgs.base
            hsPkgs.haste-compiler
            hsPkgs.mtl
          ];
        };
      };
    }