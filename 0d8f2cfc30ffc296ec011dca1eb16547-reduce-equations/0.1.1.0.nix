{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reduce-equations";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chriswarbo@gmail.com";
        author = "Chris Warburton";
        homepage = "http://chriswarbo.net/projects/repos/reduce-equations.html";
        url = "";
        synopsis = "Simplify a set of equations by removing redundancies";
        description = "Simplify a set of equations by removing redundancies";
        buildType = "Simple";
      };
      components = {
        reduce-equations = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.QuickCheck
            hsPkgs.quickspec
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.haskell-src-exts
            hsPkgs.stringable
            hsPkgs.text
          ];
        };
        exes = {
          reduce-equations = {
            depends  = [
              hsPkgs.base
              hsPkgs.reduce-equations
              hsPkgs.aeson
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.reduce-equations
              hsPkgs.quickspec
              hsPkgs.directory
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.haskell-src-exts
              hsPkgs.MissingH
              hsPkgs.stringable
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }