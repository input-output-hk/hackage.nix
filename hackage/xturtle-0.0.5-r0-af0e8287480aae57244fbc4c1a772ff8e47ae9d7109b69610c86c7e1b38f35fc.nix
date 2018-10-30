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
        name = "xturtle";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "turtle like LOGO";
      description = "In ghci\n\n> :m Graphics.X11.Turtle\n> f <- openField\n> t <- newTurtle f\n> forward f 100\n> left f 50\n\netc";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yjtools)
          (hsPkgs.convertible)
          (hsPkgs.X11)
        ];
      };
    };
  }