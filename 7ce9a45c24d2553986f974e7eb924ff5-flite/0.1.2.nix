{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pure = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "flite";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jason Reich <jason@cs.york.ac.uk>, Matthew Naylor <mfn@cs.york.ac.uk>";
        author = "Matthew Naylor";
        homepage = "http://www.cs.york.ac.uk/fp/reduceron/";
        url = "";
        synopsis = "f-lite compiler, interpreter and libraries";
        description = "The f-lite language is a subset of Haskell 98 and Clean consisting of function\ndefinitions, pattern matching, limited let expressions, function applications and\nconstructor applications expressed in the explicit 'braces' layout-insensitive format.\nSee README for more information. Example flite programs included in source distribution.";
        buildType = "Simple";
      };
      components = {
        flite = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
        exes = {
          flite-pure = {
            depends  = pkgs.lib.optionals _flags.pure [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.array
              hsPkgs.containers
            ];
          };
          flite = {
            depends  = pkgs.lib.optionals (!_flags.pure) [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.parsec
            ];
          };
        };
      };
    }