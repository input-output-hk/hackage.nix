{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory-examples";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Galois, Inc.";
        maintainer = "trevor@galois.com";
        author = "Galois, Inc";
        homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
        url = "";
        synopsis = "Ivory examples.";
        description = "Various examples demonstrating the use of Ivory.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ivory-fibtutorial = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.monadLib
              hsPkgs.template-haskell
              hsPkgs.mainland-pretty
              hsPkgs.wl-pprint
              hsPkgs.ivory
              hsPkgs.ivory-opts
              hsPkgs.ivory-backend-c
              hsPkgs.ivory-quickcheck
              hsPkgs.ivory-stdlib
              hsPkgs.QuickCheck
            ];
          };
          ivory-c-clang-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.monadLib
              hsPkgs.template-haskell
              hsPkgs.mainland-pretty
              hsPkgs.wl-pprint
              hsPkgs.ivory
              hsPkgs.ivory-opts
              hsPkgs.ivory-quickcheck
              hsPkgs.ivory-backend-c
              hsPkgs.ivory-stdlib
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }