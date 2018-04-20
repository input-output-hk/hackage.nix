{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-ajax";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2016 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/ghcjs-ajax#readme";
        url = "";
        synopsis = "Crossbrowser AJAX Bindings for GHCJS";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        ghcjs-ajax = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.aeson
          ] ++ pkgs.lib.optional compiler.isGhcjs hsPkgs.ghcjs-base;
        };
      };
    }