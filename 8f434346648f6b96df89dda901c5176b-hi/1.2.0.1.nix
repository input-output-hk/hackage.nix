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
      specVersion = "1.10";
      identifier = {
        name = "hi";
        version = "1.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@fujimuradaisuke.com";
      author = "Fujimura Daisuke";
      homepage = "https://github.com/fujimura/hi.git#readme";
      url = "";
      synopsis = "Generate scaffold for cabal project";
      description = "This application generates a scaffold for Haskell project from a Git repository.\n\nThis command\n\n\n> \$ hi foo-bar-baz\n\n\nwill generate:\n\n\n> \$ tree .\n> .\n> ├── LICENSE\n> ├── README.md\n> ├── foo-bar-baz.cabal\n> ├── src\n> │  └── Foo\n> │      └── Bar\n> │          ├── Baz\n> │          │  └── Internal.hs\n> │          └── Baz.hs\n> └── test\n>     ├── Foo\n>     │  └── Bar\n>     │      ├── Baz\n>     │      └── BazSpec.hs\n>     └── Spec.hs\n\n\nSee <https://github.com/fujimura/hi> for further usage.";
      buildType = "Simple";
    };
    components = {
      "hi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.template)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.process)
          (hsPkgs.temporary)
        ];
      };
      exes = {
        "hi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.split)
            (hsPkgs.template)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.temporary)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.split)
            (hsPkgs.template)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.process)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.split)
            (hsPkgs.template)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.HUnit)
            (hsPkgs.doctest)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.silently)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }