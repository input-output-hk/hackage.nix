{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hi";
          version = "0.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@fujimuradaisuke.com";
        author = "Fujimura Daisuke";
        homepage = "https://github.com/fujimura/hi";
        url = "";
        synopsis = "Generate scaffold for cabal project";
        description = "This application generates a scaffold for Haskell project from a Git repository.\n\nThis command\n\n\n> \$ hi --package-name \"foo-bar-baz\" --module-name \"Foo.Bar.Baz\" --author \"Fujimura Daisuke\" --email \"me@fujimuradaisuke.com\"\n\n\nwill generate:\n\n\n> \$ tree .\n> .\n> ├── LICENSE\n> ├── README.md\n> ├── foo-bar-baz.cabal\n> ├── src\n> │  └── Foo\n> │      └── Bar\n> │          ├── Baz\n> │          │  └── Internal.hs\n> │          └── Baz.hs\n> └── test\n>     ├── Foo\n>     │  └── Bar\n>     │      ├── Baz\n>     │      └── BazSpec.hs\n>     └── Spec.hs\n\n\nSee <https://github.com/fujimura/hi> for further usage.\n";
        buildType = "Simple";
      };
      components = {
        hi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.split
            hsPkgs.template
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          hi = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.split
              hsPkgs.template
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.split
              hsPkgs.template
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }