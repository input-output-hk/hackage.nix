{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hscaffold";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/hscaffold#readme";
        url = "";
        synopsis = "Very simple file/directory structure scaffolding writer monad EDSL";
        description = "See our README on GitHub at <https://github.com/yamadapc/hscaffold>";
        buildType = "Simple";
      };
      components = {
        hscaffold = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.unix
          ];
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.hspec
              hsPkgs.hscaffold
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }