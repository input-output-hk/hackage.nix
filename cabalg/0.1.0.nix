{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabalg";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "malikov.d.y@gmail.com";
        author = "Dmitry Malikov";
        homepage = "";
        url = "";
        synopsis = "alias for cabal install from given git repo";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabalg = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.temporary
            ];
          };
        };
      };
    }