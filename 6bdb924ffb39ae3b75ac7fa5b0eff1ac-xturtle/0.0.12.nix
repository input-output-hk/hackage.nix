{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xturtle";
          version = "0.0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "turtle like LOGO";
        description = "In ghci\n\n> :m Graphics.X11.Turtle\n> f <- openField\n> t <- newTurtle f\n> forward t 100\n> left t 50\n\netc";
        buildType = "Simple";
      };
      components = {
        xturtle = {
          depends  = [
            hsPkgs.base
            hsPkgs.yjtools
            hsPkgs.convertible
            hsPkgs.X11
          ];
        };
      };
    }