{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constrictor";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "https://github.com/chessai/constrictor.git";
        url = "";
        synopsis = "strict versions of many things in base";
        description = "";
        buildType = "Simple";
      };
      components = {
        constrictor = {
          depends  = [ hsPkgs.base ];
        };
      };
    }