{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9";
        identifier = {
          name = "atp-haskell";
          version = "1.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "John Harrison";
        homepage = "https://github.com/seereason/atp-haskell";
        url = "";
        synopsis = "Translation from Ocaml to Haskell of John Harrison's ATP code";
        description = "This package is a liberal translation from OCaml to Haskell of\nthe automated theorem prover written in OCaml in\nJohn Harrison's book \"Practical Logic and Automated\nReasoning\".  Click on module ATP below for an overview.";
        buildType = "Simple";
      };
      components = {
        "atp-haskell" = {
          depends  = [
            hsPkgs.applicative-extras
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.template-haskell
            hsPkgs.time
          ];
        };
        tests = {
          "atp-haskell-tests" = {
            depends  = [
              hsPkgs.atp-haskell
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.time
            ];
          };
        };
      };
    }