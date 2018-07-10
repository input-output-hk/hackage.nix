{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cookies";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Kyle McKean, chessai";
        maintainer = "chessai <chessai1996@gmail.com>";
        author = "Kyle McKean, chessai";
        homepage = "https://github.com/chessai/cookies.git";
        url = "";
        synopsis = "web cookies";
        description = "simple web cookies";
        buildType = "Simple";
      };
      components = {
        cookies = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.chronos
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }