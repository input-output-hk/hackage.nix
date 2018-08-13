{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fay";
        version = "0.19.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done, Adam Bergmark";
      maintainer = "adam@bergmark.nl";
      author = "Chris Done, Adam Bergmark";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which is type-checked\nwith GHC, and compiled to JavaScript. It is lazy, pure, has a Fay monad,\nan FFI, tail-recursion optimization (experimental), and support for cabal packages.\n\n/Documentation/\n\nSee <http://fay-lang.org/>\n\n/Examples/\n\nSee the examples directory and <https://github.com/faylang/fay/wiki#fay-in-the-wild>\n\n/Release Notes/\n\nSee <https://github.com/faylang/fay/blob/master/CHANGELOG.md>\n\nSee full history at: <https://github.com/faylang/fay/commits>";
      buildType = "Custom";
    };
    components = {
      "fay" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cpphs)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc-paths)
          (hsPkgs.haskell-names)
          (hsPkgs.haskell-packages)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.language-ecmascript)
          (hsPkgs.mtl)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uniplate)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.sourcemap)
          (hsPkgs.scientific)
        ];
      };
      exes = {
        "fay" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fay)
            (hsPkgs.data-default)
            (hsPkgs.optparse-applicative)
            (hsPkgs.split)
          ];
        };
        "fay-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fay)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }