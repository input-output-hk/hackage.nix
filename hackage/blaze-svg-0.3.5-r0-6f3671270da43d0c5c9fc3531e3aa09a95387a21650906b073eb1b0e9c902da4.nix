{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "blaze-svg";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "https://github.com/deepakjois/blaze-svg";
      url = "";
      synopsis = "SVG combinator library";
      description = "A blazingly fast SVG combinator library for the Haskell\nprogramming language. The \"Text.Blaze.SVG\" module is a good\nstarting point.\n\nOther documentation:\n\n* Programs in the /examples/ folder of this project: <https://github.com/deepakjois/blaze-svg/tree/master/examples/>\n\n* Jasper Van Der Jeugt has written a tutorial for /blaze-html/,\nwhich is a sister library of /blaze-svg/. It may not be directly relevant,\nbut still it gives a good overview on how to use the  combinators in\n\"Text.Blaze.Svg11\" and \"Text.Blaze.Svg11.Attributes\":\n<http://jaspervdj.be/blaze/tutorial.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.blaze-markup)
        ];
      };
    };
  }