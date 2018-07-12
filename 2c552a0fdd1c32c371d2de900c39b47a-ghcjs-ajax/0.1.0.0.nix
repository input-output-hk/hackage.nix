{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-ajax";
          version = "0.1.0.0";
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
        "ghcjs-ajax" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.http-types
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) hsPkgs.ghcjs-base;
        };
      };
    }