{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "blaze-html";
          version = "0.3.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <jaspervdj@gmail.com>";
        author = "Jasper Van der Jeugt, Simon Meier";
        homepage = "http://jaspervdj.be/blaze";
        url = "";
        synopsis = "A blazingly fast HTML combinator library.";
        description = "A blazingly fast HTML combinator library for the Haskell\nprogramming language. The Text.Blaze module is a good\nstarting point, as well as this tutorial:\n<http://jaspervdj.be/blaze/tutorial.html>.";
        buildType = "Simple";
      };
      components = {
        blaze-html = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.blaze-builder
          ];
        };
      };
    }