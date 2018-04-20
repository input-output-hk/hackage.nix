{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vacuum-ubigraph";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gleb Alexeyev <gleb.alexeev@gmail.com>";
        author = "Gleb Alexeyev";
        homepage = "";
        url = "";
        synopsis = "Visualize Haskell data structures using vacuum and Ubigraph";
        description = "Visualize Haskell data structures using vacuum and Ubigraph\n\nTo use it, you'll have to install Ubigraph first, see \"http://ubietylab.net/ubigraph/\"\n\nThen run ubigraph server with default settings (with a command like '\$UBIGRAPH_DIR/bin/ubigraph_server')\n\nThen load System.Vacuum.Ubigraph module into the ghci session and use `view' function, e.g.\n\n> view [1..3]";
        buildType = "Simple";
      };
      components = {
        vacuum-ubigraph = {
          depends  = [
            hsPkgs.base
            hsPkgs.vacuum
            hsPkgs.haxr
            hsPkgs.containers
            hsPkgs.HTTP
          ];
        };
      };
    }