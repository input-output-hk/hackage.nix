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
      specVersion = "1.6";
      identifier = {
        name = "easyplot";
        version = "1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://hub.darcs.net/scravy/easyplot";
      url = "";
      synopsis = "A tiny plotting library, utilizes gnuplot for plotting.";
      description = "A tiny plotting library for Haskell, using gnuplot for rendering.\n\nDeveloped and tested using Mac OS X 10.7.3 with gnuplot 4.4 (via MacPorts).\nCompiles using GHC 7.0.4\n\nMake sure gnuplot is in your path and everything should work.\n\nSome sample plots:\n\n> plot X11 \$ Data2D [Title \"Sample Data\"] [] [(1, 2), (2, 4), ...]\n\n> plot X11 \$ Function2D [Title \"Sine and Cosine\"] [] (\\x -> sin x * cos x)\n\n> plot X11 sin\n\n> plot (PNG \"plot.png\") (sin . cos)\n\n> plot X11 \$ Gnuplot2D [Color Blue] [] \"2**cos(x)\"\n\n> plot X11 [ Data2D [Title \"Graph 1\", Color Red] [] [(x, x ** 3) | x <- [-4,-3.9..4]]\n>          , Function2D [Title \"Function 2\", Color Blue] [] (\\x -> negate \$ x ** 2) ]\n\n> plot' [Interactive] X11 \$ Gnuplot3D [Color Magenta] [] \"x ** 2 + y ** 3\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
        ];
      };
    };
  }