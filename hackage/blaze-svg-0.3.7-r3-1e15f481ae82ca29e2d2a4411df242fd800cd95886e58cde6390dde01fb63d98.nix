{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "blaze-svg"; version = "0.3.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Deepak Jois";
      homepage = "https://github.com/diagrams/blaze-svg";
      url = "";
      synopsis = "SVG combinator library";
      description = "A blazingly fast SVG combinator library for the Haskell\nprogramming language. The \"Text.Blaze.SVG\" module is a good\nstarting point.\n\nOther documentation:\n\n* Programs in the /examples/ folder of this project: <https://github.com/diagrams/blaze-svg/tree/master/examples/>\n\n* Jasper Van Der Jeugt has written a tutorial for /blaze-html/,\nwhich is a sister library of /blaze-svg/. It may not be directly relevant,\nbut still it gives a good overview on how to use the  combinators in\n\"Text.Blaze.Svg11\" and \"Text.Blaze.Svg11.Attributes\":\n<http://jaspervdj.be/blaze/tutorial.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        buildable = true;
      };
    };
  }