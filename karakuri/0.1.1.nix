{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "karakuri";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/karakuri";
        url = "";
        synopsis = "Good stateful automata";
        description = "";
        buildType = "Simple";
      };
      components = {
        karakuri = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.comonad
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.minioperational
          ];
        };
      };
    }