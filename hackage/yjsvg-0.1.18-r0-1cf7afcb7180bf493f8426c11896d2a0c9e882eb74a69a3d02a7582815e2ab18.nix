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
      specVersion = "1.6";
      identifier = { name = "yjsvg"; version = "0.1.18"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      author = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "make SVG string from Haskell data";
      description = "> import Text.XML.YJSVG\n> main = putStrLn \$ showSVG 500 750 [ Line 30 40 100 200 \"yellow\" 10 ]\n\netc";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ];
        buildable = true;
        };
      };
    }