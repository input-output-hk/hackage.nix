{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "readline-statevar";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
        author = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Readline with variables (setX/getY) wrapped in state vars";
        description = "readline package is a good wrapping library around libreadline.\n\nUnfortunately, there is a lot of set/get pairs of functions, which clutter namespace.\nThis kind of API can be nicely expressed as StateVars, as in HOpenGL.\n\nreadline-statevar seeks to fill this gap and provide nicer API based on StateVars.\n\nFor clarity: this module wraps only System.Console.Readline module.\nSystem.Console.SimpleLineEditor is left untouched.";
        buildType = "Simple";
      };
      components = {
        "readline-statevar" = {
          depends  = [
            hsPkgs.readline
            hsPkgs.base
            hsPkgs.StateVar
          ];
        };
      };
    }