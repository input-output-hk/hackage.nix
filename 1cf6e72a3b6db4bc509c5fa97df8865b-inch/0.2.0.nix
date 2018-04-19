{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "inch";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Adam Gundry";
        maintainer = "Adam Gundry <adam.gundry@strath.ac.uk>";
        author = "Adam Gundry <adam.gundry@strath.ac.uk>";
        homepage = "https://github.com/adamgundry/inch/";
        url = "";
        synopsis = "A type-checker for Haskell with integer constraints";
        description = "Inch is a type-checker for a subset of Haskell (plus some GHC\nextensions) with the addition of integer constraints. After\nsuccessfully type-checking a source file, it outputs an\noperationally equivalent version with the type-level integers\nerased, so it can be used as a preprocessor in order to compile\nprograms.";
        buildType = "Simple";
      };
      components = {
        exes = {
          inch = {
            depends  = [
              hsPkgs.base
              hsPkgs.IndentParser
              hsPkgs.parsec
              hsPkgs.presburger
              hsPkgs.pretty
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          test-inch = {
            depends  = [
              hsPkgs.base
              hsPkgs.IndentParser
              hsPkgs.parsec
              hsPkgs.presburger
              hsPkgs.pretty
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }