{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yjsvg";
          version = "0.1.14";
        };
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
        yjsvg = {
          depends  = [
            hsPkgs.base
            hsPkgs.HaXml
          ];
        };
      };
    }