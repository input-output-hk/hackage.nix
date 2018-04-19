{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay";
          version = "0.20.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Chris Done, Adam Bergmark";
        maintainer = "adam@bergmark.nl";
        author = "Chris Done, Adam Bergmark";
        homepage = "http://fay-lang.org/";
        url = "";
        synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
        description = "Fay is a proper subset of Haskell which is type-checked\nwith GHC, and compiled to JavaScript. It is lazy, pure, has a Fay monad,\nan FFI, tail-recursion optimization (experimental), and support for cabal packages.\n\n/Documentation/\n\nSee <http://fay-lang.org/>\n\n/Examples/\n\nSee the examples directory and <https://github.com/faylang/fay/wiki#fay-in-the-wild>\n";
        buildType = "Custom";
      };
      components = {
        fay = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc-paths
            hsPkgs.haskell-names
            hsPkgs.haskell-packages
            hsPkgs.haskell-src-exts
            hsPkgs.language-ecmascript
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.safe
            hsPkgs.sourcemap
            hsPkgs.split
            hsPkgs.spoon
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.uniplate
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
          ];
        };
        exes = {
          fay = {
            depends  = [
              hsPkgs.base
              hsPkgs.fay
              hsPkgs.optparse-applicative
              hsPkgs.split
            ];
          };
          fay-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.fay
              hsPkgs.filepath
              hsPkgs.groom
              hsPkgs.haskell-src-exts
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }