{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clr-typed";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016-2017 Tim Matthews";
        maintainer = "pepeiborra@gmail.com";
        author = "Tim Matthews";
        homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-typed";
        url = "";
        synopsis = "A strongly typed Haskell interface to the CLR type system";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "clr-typed" = {
          depends  = [
            hsPkgs.base
            hsPkgs.tuple
            hsPkgs.text
            hsPkgs.ghc-prim
            hsPkgs.clr-marshal
          ];
        };
        tests = {
          "clr-typed-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.clr-typed
              hsPkgs.clr-marshal
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }