{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parsix";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017-2018 Olle Fredriksson";
        maintainer = "fredriksson.olle@gmail.com";
        author = "Olle Fredriksson";
        homepage = "https://github.com/ollef/parsix";
        url = "";
        synopsis = "Parser combinators with slicing, error recovery, and syntax highlighting";
        description = "A parser combinator library based on 'parsers' (like 'trifecta') with slicing, error recovery, and syntax highlighted diagnostics";
        buildType = "Simple";
      };
      components = {
        parsix = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.fingertree
            hsPkgs.mtl
            hsPkgs.parsers
            hsPkgs.prettyprinter
            hsPkgs.prettyprinter-ansi-terminal
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.parsix
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
            ];
          };
        };
      };
    }