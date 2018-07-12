{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "derive-topdown";
          version = "0.0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Haskell.Zhang.Song@hotmail.com";
        author = "songzh";
        homepage = "https://github.com/HaskellZhangSong/derive-topdown";
        url = "";
        synopsis = "This library will help you generate Haskell empty Generic instances  and deriving type instances from the top automatically to the bottom for composited data types.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "derive-topdown" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.template-haskell-util
            hsPkgs.mtl
            hsPkgs.derive
          ];
        };
      };
    }