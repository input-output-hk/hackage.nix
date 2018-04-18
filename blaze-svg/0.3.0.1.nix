{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blaze-svg";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "deepak.jois@gmail.com";
        author = "Deepak Jois";
        homepage = "https://github.com/deepakjois/blaze-svg";
        url = "";
        synopsis = "SVG combinator library";
        description = "A blazingly fast SVG combinator library for the Haskell\nprogramming language. The \"Text.Blaze.SVG\" module is a good\nstarting point.\n\nOther documentation:\n\n* Programs in the /examples/ folder of this project: <https://github.com/deepakjois/blaze-svg/tree/master/examples/>\n\n* Jasper Van Der Jeugt has written  tutorial below is for /blaze-html/,\nwhich is a sister library of /blaze-svg/, but gives a good overview\non how to use the  combinators in \"Text.Blaze.Svg11\" and\n\"Text.Blaze.Svg11.Attributes\":\n<http://jaspervdj.be/blaze/tutorial.html>.";
        buildType = "Simple";
      };
      components = {
        blaze-svg = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.blaze-markup
          ];
        };
      };
    }