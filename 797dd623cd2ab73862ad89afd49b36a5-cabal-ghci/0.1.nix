{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-ghci";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "etienne@atnnn.com";
        author = "Etienne Laurin";
        homepage = "http://code.atnnn.com/projects/cabal-ghci/wiki";
        url = "";
        synopsis = "Set up ghci with options taken from a .cabal file";
        description = "The executable cabal-ghci runs ghci with the paths and extensions needed by a cabal project.\nThe cabalSet function can be added to your .ghci to provide the same functionality at runtime, giving you more control over the options that are set:\n:m + Distribution.Dev.Interactive\n:def cabalset cabalSet\n:cabalset\nBoth cabal-ghci and cabalset can take cabal flags and an executable name as arguments. For example:\nPrelude> :cabalset -fdevel up1\n:set \"-i/home/atnnn/up1/src/dist/build/autogen\"\n:set \"-i/home/atnnn/up1/src/web\"\n:set \"-XTypeFamilies\"\n:set \"-XQuasiQuotes\"";
        buildType = "Simple";
      };
      components = {
        "cabal-ghci" = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          "cabal-ghci" = {
            depends  = [ hsPkgs.process ];
          };
        };
      };
    }