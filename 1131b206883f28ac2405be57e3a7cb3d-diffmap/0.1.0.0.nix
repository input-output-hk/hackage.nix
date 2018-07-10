{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diffmap";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018 chessai";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "https://github.com/chessai/diffmap.git";
        url = "";
        synopsis = "diff on maps";
        description = "a very general way of lossless diffing on maps";
        buildType = "Simple";
      };
      components = {
        diffmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }