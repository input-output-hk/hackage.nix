{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      template-haskell = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "recursion-schemes";
          version = "5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/recursion-schemes/";
        url = "";
        synopsis = "Generalized bananas, lenses and barbed wire";
        description = "Recursion operators, see\n\"Generalized bananas, lenses and barbed wire\"\nby Erik Meijer, Maarten Fokkinga and Ross Paterson.";
        buildType = "Simple";
      };
      components = {
        recursion-schemes = {
          depends  = (([
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.comonad
            hsPkgs.free
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optionals _flags.template-haskell [
            hsPkgs.template-haskell
            hsPkgs.base-orphans
          ];
        };
        tests = {
          Expr = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.recursion-schemes
              hsPkgs.template-haskell
              hsPkgs.transformers
            ];
          };
        };
      };
    }