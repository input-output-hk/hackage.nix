{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      use_xft = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gsmenu";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk";
      url = "";
      synopsis = "A visual generic menu";
      description = "Standalone port of XMonadContrib's GridSelect.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "gsmenu" = {
          depends  = [
            (hsPkgs.X11)
            (hsPkgs.X11-xshape)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parsec)
          ] ++ pkgs.lib.optionals (_flags.use_xft) [
            (hsPkgs.X11-xft)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }