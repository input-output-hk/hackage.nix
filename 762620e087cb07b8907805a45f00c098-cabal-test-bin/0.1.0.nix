{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-test-bin";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "junji.hashimoto@gmail.com";
        author = "Junji Hashimoto";
        homepage = "";
        url = "";
        synopsis = "A program for finding temporary build file during cabal-test.";
        description = "cabal-test-bin finds exe-file for \"cabal install --enable-tests --run-tests\" or \"cabal test\".\nWhen a project uses cabal-sandbox,\ncabal-test-bin checks both <project root>/dist/dist-sandbox-<hash>/build/<exe-file>/<exe-file>\nand <project root>/dist/build/<exe-file>/<exe-file>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabal-test-bin = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.unix
            ];
          };
        };
      };
    }