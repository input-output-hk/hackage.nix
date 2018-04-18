{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "keycode";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2015 Ryan Scott";
        maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
        author = "Ryan Scott";
        homepage = "https://github.com/RyanGlScott/keycode";
        url = "";
        synopsis = "Maps web browser keycodes to their corresponding keyboard keys";
        description = "Keyboard events in web browsers are often represented as keycodes,\nwhich (1) are difficult to remember, and (2) sometimes vary from\nbrowser to browser. \"Web.KeyCode\" allows one to look up a key\npress's keycode and get a plain English description of the key\nthat was pressed, to reduce confusion.";
        buildType = "Simple";
      };
      components = {
        keycode = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }