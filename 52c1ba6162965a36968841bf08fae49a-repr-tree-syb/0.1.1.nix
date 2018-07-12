{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "repr-tree-syb";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2013, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov";
        homepage = "https://github.com/nikita-volkov/repr-tree-syb";
        url = "";
        synopsis = "Tree representation and pretty-printing of data structures based on SYB";
        description = "This library provides a convenient way to inspect and debug arbitrary data structures.";
        buildType = "Simple";
      };
      components = {
        "repr-tree-syb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.syb
          ];
        };
      };
    }