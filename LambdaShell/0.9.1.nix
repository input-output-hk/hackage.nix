{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "LambdaShell";
          version = "0.9.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "robdockins AT fastmail DOT fm";
        author = "Robert Dockins";
        homepage = "http://www.cs.princeton.edu/~rdockins/lambda/home/";
        url = "";
        synopsis = "Simple shell for evaluating lambda expressions";
        description = "The lambda shell is a feature-rich shell environment and command-line tool for\nevaluating terms of the pure, untyped lambda calculus.  The Lambda\nShell builds on the shell creation framework Shellac, and showcases\nmost of Shellac's features.";
        buildType = "Simple";
      };
      components = {
        exes = {
          lambdaShell = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.readline
              hsPkgs.Shellac
              hsPkgs.Shellac-readline
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.containers;
            libs = [ pkgs.readline ];
          };
        };
      };
    }