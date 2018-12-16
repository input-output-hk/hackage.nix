{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      jsffi = true;
      webkit = false;
      jsc = false;
      gtk3 = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghcjs-dom";
        version = "0.0.2";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optionals (compiler.isGhc && true) ([
          (hsPkgs.glib)
          (hsPkgs.transformers)
        ] ++ (if flags.gtk3
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