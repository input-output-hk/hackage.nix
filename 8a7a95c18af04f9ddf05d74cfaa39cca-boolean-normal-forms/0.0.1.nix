{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "boolean-normal-forms";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "© Oleg Grenrus 2014";
        maintainer = "oleg.grenrus@iki.fi";
        author = "Oleg Grenrus";
        homepage = "";
        url = "";
        synopsis = "Boolean normal form: NNF, DNF & CNF";
        description = "The provided types that might be useful in symbolic manipulation of propositional logic expressions.";
        buildType = "Simple";
      };
      components = {
        "boolean-normal-forms" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.cond
            hsPkgs.deepseq
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.cond
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.boolean-normal-forms
            ];
          };
        };
      };
    }