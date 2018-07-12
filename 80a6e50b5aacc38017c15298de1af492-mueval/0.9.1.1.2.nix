{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mueval";
          version = "0.9.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gwern <gwern@gwern.net>";
        author = "Gwern";
        homepage = "https://github.com/gwern/mueval";
        url = "";
        synopsis = "Safely evaluate pure Haskell expressions";
        description = "Mueval is a Haskell interpreter. It\nuses the GHC API to evaluate arbitrary Haskell expressions.\nImportantly, mueval takes many precautions to defang and avoid \\\"evil\\\"\ncode.  It uses resource limits, whitelisted modules and Safe Haskell,\nspecial Show instances for IO, threads, processes, and changes of directory\nto sandbox the Haskell code.\n\nIt is, in short, intended to be a standalone version of Lambdabot's famous\nevaluation functionality. For examples and explanations, please see the README file.\n\nMueval is POSIX-only.";
        buildType = "Simple";
      };
      components = {
        "mueval" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.unix
            hsPkgs.process
            hsPkgs.hint
            hsPkgs.show
            hsPkgs.Cabal
            hsPkgs.extensible-exceptions
            hsPkgs.simple-reflect
            hsPkgs.QuickCheck
          ];
        };
        exes = {
          "mueval-core" = {
            depends  = [ hsPkgs.base ];
          };
          "mueval" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }