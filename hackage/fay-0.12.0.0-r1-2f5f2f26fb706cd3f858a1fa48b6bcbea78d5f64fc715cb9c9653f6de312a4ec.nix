{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fay";
        version = "0.12.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done, Adam Bergmark";
      maintainer = "chrisdone@gmail.com, adam@edea.se";
      author = "Chris Done, Adam Bergmark";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ cabal install fay-base\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n. * Updates to name resolution.\n\n. * Added initial fay-base support.\n\n. * Basic CPP support (#136)\n\n. * Serialization of Text values (#136)\n\n. * Add Automatic serialization, export Automatic/Ptr, bump version.\n\n. * Do not automatically serialize polymorphic values.\n\n. * Support Ptr type to force the serializer to ignore things.\n\n. * Add very dubious --package flag.\n\n. * Support type imports (IAbs)\n\n. * Support import X (a, b) and import X hiding (a, b).\n\n. * Implement guards in case branches\n\n. * Fix instance declarations missing when typechecking (closes #177)\n\n. * Bump optparse-applicative to >= 0.5 (closes #195)\n\nSee full history at: <https://github.com/faylang/fay/commits>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc-paths)
          (hsPkgs.groom)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.language-ecmascript)
          (hsPkgs.mtl)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optionals (!flags.devel) [
          (hsPkgs.HUnit)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.optparse-applicative)
          (hsPkgs.split)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-th)
        ];
      };
      exes = {
        "fay" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc-paths)
            (hsPkgs.groom)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.language-ecmascript)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.safe)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
            (hsPkgs.haskeline)
            (hsPkgs.optparse-applicative)
            (hsPkgs.split)
          ];
        };
        "fay-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc-paths)
            (hsPkgs.groom)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.language-ecmascript)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.safe)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
          ];
        };
        "fay-docs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc-paths)
            (hsPkgs.groom)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.language-ecmascript)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.safe)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ];
        };
      };
    };
  }