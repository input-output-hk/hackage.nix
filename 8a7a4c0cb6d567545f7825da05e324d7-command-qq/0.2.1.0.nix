{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "command-qq";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "http://biegunka.github.io/command-qq/";
        url = "";
        synopsis = "Quasiquoters for external commands";
        description = "Features:\n\n* Quasiquotation syntax for external interpreters\n\n> >>> [sh_| echo hello world! |]\n> hello world!\n\n* Custom quasiquoters\n\n> ghci = quoter \$ callCommand \"ghc\" [\"-ignore-dot-ghci\", \"-e\"]\n\nThen you can use @ghci@ in ghci!\n\n> >>> [ghci| putStrLn \"hello world!\" |] :: IO ()\n> hello world!\n\nFor more examples, see \"System.Command.QQ.Predef\"\n\n* Haskell values embedding\n\nSee README.md for an example\n\n* DSLs\n\nSee @examples/CommandT.hs@\n";
        buildType = "Simple";
      };
      components = {
        command-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.command-qq
              hsPkgs.template-haskell
              hsPkgs.text
            ];
          };
        };
      };
    }