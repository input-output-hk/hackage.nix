{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "h-reversi";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Apoorv Ingle";
      maintainer = "apoorv.ingle@gmail.com";
      author = "Apoorv Ingle";
      homepage = "https://github.com/apoorvingle/h-reversi";
      url = "";
      synopsis = "Reversi game in haskell/blank-canvas";
      description = "@h-reversi@ is build using using html5/blank-canvas\n@\n\n<<https://github.com/apoorvingle/h-reversi/blob/master/images/screenshot.jpeg>>\n\n@\nPlease visit <https://github.com/apoorvingle/h-reversi h-reversi> for more details";
      buildType = "Simple";
    };
    components = {
      "h-reversi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blank-canvas)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.text)
        ];
      };
      exes = {
        "h-reversi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blank-canvas)
            (hsPkgs.containers)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "h-reversi-properties" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.h-reversi)
            (hsPkgs.hspec)
            (hsPkgs.split)
            (hsPkgs.text)
          ];
        };
      };
    };
  }