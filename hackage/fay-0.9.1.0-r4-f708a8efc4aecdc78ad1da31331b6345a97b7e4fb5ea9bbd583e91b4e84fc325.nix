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
        version = "0.9.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install -fdevel\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Infix constructor applications and infix operator constructors.\n\n* Warn when NoImplicitPrelude isn't specified.\n\n* Added fay --version.\n\n* Html wrapper enhancements.\n\n* Initial pass-through to collect record information. This means records can now be used before they're defined.\n\n* Expose more prelude functions.\n\n* Fixed doctype typo in HTML wrappers.\n\n* Basic interactive shell\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.attoparsec)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.pretty-show)
          (hsPkgs.data-default)
          (hsPkgs.safe)
          (hsPkgs.language-ecmascript)
          (hsPkgs.syb)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.groom)
        ] ++ pkgs.lib.optionals (flags.devel) [
          (hsPkgs.HUnit)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.options)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-th)
        ];
      };
      exes = {
        "fay" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.data-default)
            (hsPkgs.safe)
            (hsPkgs.language-ecmascript)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.groom)
            (hsPkgs.options)
            (hsPkgs.haskeline)
          ];
        };
        "fay-tests" = {
          depends  = pkgs.lib.optionals (flags.devel) [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.pretty-show)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.safe)
            (hsPkgs.language-ecmascript)
            (hsPkgs.groom)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
          ];
        };
        "fay-docs" = {
          depends  = pkgs.lib.optionals (flags.devel) [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.pretty-show)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.data-default)
            (hsPkgs.safe)
            (hsPkgs.language-ecmascript)
            (hsPkgs.groom)
          ];
        };
      };
    };
  }