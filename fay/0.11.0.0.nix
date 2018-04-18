{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay";
          version = "0.11.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Chris Done";
        maintainer = "chrisdone@gmail.com, adam@edea.se";
        author = "Chris Done, Adam Bergmark";
        homepage = "http://fay-lang.org/";
        url = "";
        synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
        description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n. * Restrict optparse-applicative to < 0.5.\n\n. * Error on case-wheres instead of ignoring them.\n\n. * Fix serialization of parametrized types when the type information is available.\n\n. * Fix recursive definition name resolving (closes #187).\n\n. * Fix as patterns always matching (closes #186)\n\n. * Fix bind error (closes #178).\n\n. * Check GHC version from command line instead of CPP (#174)\n\n. * Move Defined and Nullable to Language.Fay.FFI\n\n. * Add Nullable.\n\n. * Use GHC.Path for running ghc and handle flag change in GHC 7.6 (refs #174).\n\n. * Add HASKELL_PACKAGE_SANDBOX environment variable support (closes #174).\n\n. * Fix Maybe serialization.\n\n. * Fix serializing for doubles (i.e. also parsing ints).\n\n. * Option to warn for Closure-unfriendly FFI bindings.\n\nSee full history at: <https://github.com/faylang/fay/commits>";
        buildType = "Custom";
      };
      components = {
        fay = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-paths
            hsPkgs.mtl
            hsPkgs.haskell-src-exts
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.attoparsec
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.pretty-show
            hsPkgs.data-default
            hsPkgs.safe
            hsPkgs.language-ecmascript
            hsPkgs.syb
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.groom
            hsPkgs.random
          ] ++ optionals (!_flags.devel) [
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
          fay = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-paths
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.aeson
              hsPkgs.syb
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.pretty-show
              hsPkgs.process
              hsPkgs.data-default
              hsPkgs.safe
              hsPkgs.language-ecmascript
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.groom
              hsPkgs.random
              hsPkgs.optparse-applicative
              hsPkgs.split
              hsPkgs.haskeline
            ];
          };
          fay-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-paths
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.aeson
              hsPkgs.syb
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.pretty-show
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.data-default
              hsPkgs.safe
              hsPkgs.language-ecmascript
              hsPkgs.groom
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
          fay-docs = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-paths
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.aeson
              hsPkgs.syb
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.pretty-show
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.data-default
              hsPkgs.safe
              hsPkgs.language-ecmascript
              hsPkgs.groom
              hsPkgs.random
            ];
          };
        };
      };
    }