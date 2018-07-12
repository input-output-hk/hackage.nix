{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gluturtle";
          version = "0.0.23";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "turtle like LOGO with glut";
        description = "turtle like LOGO with glut\n\nNow alpha alpha alpha alpha version.";
        buildType = "Simple";
      };
      components = {
        "gluturtle" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yjtools
            hsPkgs.convertible
            hsPkgs.yjsvg
            hsPkgs.GLUT
          ];
        };
        exes = {
          "testTurtle" = {};
          "randomTurtle" = {
            depends  = [ hsPkgs.random ];
          };
        };
      };
    }