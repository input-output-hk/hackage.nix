{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cabalgraph";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/cabalgraph";
        url = "";
        synopsis = "Generate pretty graphs of module trees from cabal files";
        description = "Generate pretty graphs of module trees from cabal files\n\nGraph exposed modules from .cabal files in some directories:\n\n>   \$ cabalgraph a b c d | dot -Tpng | xv -\n\nResults in a graph like: <http://code.haskell.org/~dons/images/dot.png>\n\nGraph exposed modules from a url:\n\n>   \$ cabalgraph http://code.haskell.org/xmonad/xmonad.cabal | circo -Tpng | xv -\n\nResults in a graph like: <http://code.haskell.org/~dons/images/xmonad-dot.png>";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabalgraph" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.filepath
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.pretty
                hsPkgs.process
                hsPkgs.directory
                hsPkgs.containers
                hsPkgs.bytestring
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }