{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay";
          version = "0.14.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Chris Done, Adam Bergmark";
        maintainer = "chrisdone@gmail.com, adam@edea.se";
        author = "Chris Done, Adam Bergmark";
        homepage = "http://fay-lang.org/";
        url = "";
        synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
        description = "Fay is a proper subset of Haskell which is type-checked\nwith GHC, and compiled to JavaScript. It is lazy, pure, has a Fay monad,\nan FFI, tail-recursion optimization (experimental), and support for cabal packages.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ cabal install fay-base\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Recursively check package directories for .hs files.\n\n* Fix examples.\n\n* Show line numbers in FFI errors.\n\n* Support () in pattern matches.\n\nSee full history at: <https://github.com/faylang/fay/commits>";
        buildType = "Custom";
      };
      components = {
        "fay" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc-paths
            hsPkgs.Cabal
            hsPkgs.haskell-src-exts
            hsPkgs.language-ecmascript
            hsPkgs.mtl
            hsPkgs.pretty-show
            hsPkgs.process
            hsPkgs.safe
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
          ] ++ pkgs.lib.optionals (!_flags.devel) [
            hsPkgs.HUnit
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.optparse-applicative
            hsPkgs.split
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-th
          ];
        };
        exes = {
          "fay" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-paths
              hsPkgs.Cabal
              hsPkgs.haskell-src-exts
              hsPkgs.language-ecmascript
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.safe
              hsPkgs.syb
              hsPkgs.utf8-string
              hsPkgs.haskeline
              hsPkgs.optparse-applicative
              hsPkgs.split
            ];
          };
          "fay-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-paths
              hsPkgs.Cabal
              hsPkgs.haskell-src-exts
              hsPkgs.language-ecmascript
              hsPkgs.mtl
              hsPkgs.pretty-show
              hsPkgs.process
              hsPkgs.safe
              hsPkgs.syb
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
              hsPkgs.vector
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }