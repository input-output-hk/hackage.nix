{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      exes = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-lua2";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mitchellwrosen@gmail.com";
        author = "Mitchell Rosen";
        homepage = "http://github.com/mitchellwrosen/language-lua2";
        url = "";
        synopsis = "Lua parser and pretty printer";
        description = "Lua parser and pretty printer";
        buildType = "Simple";
      };
      components = {
        "language-lua2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.Earley
            hsPkgs.lexer-applicative
            hsPkgs.microlens
            hsPkgs.regex-applicative
            hsPkgs.semigroups
            hsPkgs.srcloc
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.wl-pprint
          ];
        };
        exes = {
          "parse" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Earley
              hsPkgs.lexer-applicative
              hsPkgs.language-lua2
              hsPkgs.optparse-applicative
              hsPkgs.srcloc
              hsPkgs.wl-pprint
            ];
          };
          "lex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lexer-applicative
              hsPkgs.language-lua2
              hsPkgs.srcloc
            ];
          };
        };
        tests = {
          "language-lua2-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lexer-applicative
              hsPkgs.language-lua2
              hsPkgs.QuickCheck
              hsPkgs.semigroups
              hsPkgs.srcloc
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }