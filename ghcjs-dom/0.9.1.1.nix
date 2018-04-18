{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      jsffi = true;
    } // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "ghcjs-dom";
          version = "0.9.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "DOM library that supports both GHCJS and GHC";
        description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and a Browser.";
        buildType = "Simple";
      };
      components = {
        ghcjs-dom = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
          ] ++ (if compiler.isGhcjs && _flags.jsffi
            then [ hsPkgs.ghcjs-dom-jsffi ]
            else [
              hsPkgs.ghcjs-dom-jsaddle
            ]);
        };
      };
    }