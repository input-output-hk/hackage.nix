{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "awesomium";
          version = "0.1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2012 Maksymilian Owsianny";
        maintainer = "Maksymilian.Owsianny+Awesomium@gmail.com";
        author = "Maksymilian Owsianny";
        homepage = "";
        url = "";
        synopsis = "High-level Awesomium bindings.";
        description = "Awesomium (<http://awesomium.com>) is a windowless\nport of Chromium/Webkit.\n\nYou can integrate it with your program, and write\nall of your UI with HTML\\/CSS\\/JS.\n\nIf you plan to integrate Awesomium with GLUT you\ncan also check out this package\n(<http://hackage.haskell.org/package/awesomium-glut>).";
        buildType = "Simple";
      };
      components = {
        awesomium = {
          depends  = [
            hsPkgs.awesomium-raw
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.attoparsec
          ];
        };
      };
    }