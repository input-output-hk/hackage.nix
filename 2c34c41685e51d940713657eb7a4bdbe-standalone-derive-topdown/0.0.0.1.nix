{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "standalone-derive-topdown";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Haskell.Zhang.Song@hotmail.com";
        author = "songzh";
        homepage = "https://github.com/HaskellZhangSong/TopdownDerive";
        url = "";
        synopsis = "This package will derive class instance along the data type declaration tree.";
        description = "For a very complex composited data type, you just need to write one deriving declaration instead of writing deriving for each of them. Please see the example in Readme file. You need to use GHC 7.10 or higher GHC version.";
        buildType = "Simple";
      };
      components = {
        "standalone-derive-topdown" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }