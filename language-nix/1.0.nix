{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-nix";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "https://github.com/peti/language-nix";
        url = "";
        synopsis = "Haskell AST and Parsers for the Nix language";
        description = "This library provides parsec combinators that parse Nix into an AST.";
        buildType = "Simple";
      };
      components = {
        language-nix = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.QuickCheck
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
        exes = {
          parse-nix = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-nix
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
          run-nix = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-nix
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          self-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-nix
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.doctest
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }