{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "singletons";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Richard Eisenberg <eir@cis.upenn.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
        author = "Richard Eisenberg <eir@cis.upenn.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
        homepage = "http://www.cis.upenn.edu/~eir/packages/singletons";
        url = "";
        synopsis = "A framework for generating singleton types";
        description = "This library generates singleton types, promoted functions, and singleton\nfunctions using Template Haskell. It is useful for programmers who wish\nto use dependently typed programming techniques. The library was originally\npresented in /Dependently Typed Programming with Singletons/, published\nat the Haskell Symposium, 2012.\n(<http://www.cis.upenn.edu/~eir/papers/2012/singletons/paper.pdf>)\nVersion 1.0 and onwards works a lot harder to promote functions. See the\npaper published at Haskell Symposium, 2014:\n<http://www.cis.upenn.edu/~eir/papers/2014/promotion/promotion.pdf>.";
        buildType = "Simple";
      };
      components = {
        "singletons" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.th-desugar
          ];
        };
        tests = {
          "singletons-test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.constraints
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.Cabal
            ];
          };
        };
      };
    }