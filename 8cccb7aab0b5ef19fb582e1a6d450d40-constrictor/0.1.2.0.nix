{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constrictor";
          version = "0.1.2.0";
        };
        license = "MIT";
        copyright = "2018 (c) chessai";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "https://github.com/chessai/constrictor.git";
        url = "";
        synopsis = "strict versions of many things in base";
        description = "This package provides strict versions of many functions in\nbase, including many folding functions not present in there.";
        buildType = "Simple";
      };
      components = {
        "constrictor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.transformers
          ];
        };
      };
    }