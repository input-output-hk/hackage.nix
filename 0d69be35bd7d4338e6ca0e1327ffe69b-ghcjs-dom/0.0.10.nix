{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      ghcjs = true;
      jsffi = true;
      webkit = false;
      jsc = false;
      gtk3 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghcjs-dom";
        version = "0.0.10";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library that supports both GHCJS and WebKitGTK";
      description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and WebKitGTK.";
      buildType = "Simple";
    };
    components = {
      "ghcjs-dom" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (_flags.ghcjs) (hsPkgs.ghcjs-base)) ++ pkgs.lib.optional (_flags.ghcjs && _flags.jsffi) (hsPkgs.ghcjs-base)) ++ pkgs.lib.optionals (!_flags.ghcjs || _flags.webkit) ([
          (hsPkgs.glib)
          (hsPkgs.transformers)
        ] ++ (if _flags.gtk3
          then [
            (hsPkgs.gtk3)
            (hsPkgs.webkitgtk3)
          ]
          else [
            (hsPkgs.gtk)
            (hsPkgs.webkit)
          ]));
      };
    };
  }