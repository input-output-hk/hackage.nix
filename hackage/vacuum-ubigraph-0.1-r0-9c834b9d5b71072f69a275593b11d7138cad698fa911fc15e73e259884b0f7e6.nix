{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "vacuum-ubigraph";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gleb Alexeyev <gleb.alexeev@gmail.com>";
      author = "Gleb Alexeyev";
      homepage = "";
      url = "";
      synopsis = "Visualize Haskell data structures using vacuum and Ubigraph";
      description = "Visualize Haskell data structures using vacuum and Ubigraph\nTo use it, you'll have to install Ubigraph first - see http://ubietylab.net/ubigraph/\nThen run ubigraph server with default settings (with a command like \$UBIGRAPH_DIR/bin/ubigraph_server)\nThen load System.Vacuum.Ubigraph module into the ghci session and use `view' function, e.g.\n> view [1..3]";
      buildType = "Simple";
    };
    components = {
      "vacuum-ubigraph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vacuum)
          (hsPkgs.haxr)
          (hsPkgs.containers)
        ];
      };
    };
  }