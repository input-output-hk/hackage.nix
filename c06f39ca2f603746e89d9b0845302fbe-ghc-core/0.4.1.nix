{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ghc-core";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/ghc-core";
        url = "";
        synopsis = "Display GHC's core and assembly output in a pager";
        description = "A convenient command line wrapper for GHC that displays\nGHC's optimised core and assembly output in a human\nreadable, colourised manner, in a pager. Unix systems\nonly, currently.\n\nUsage:\n\n> ghc-core A.hs\n\n> ghc-core -fvia-C -optc-O3 A.hs\n\nScreenshot: <http://galois.com/~dons/images/ghc-core.png>\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          ghc-core = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.pcre-light
              hsPkgs.hscolour
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }