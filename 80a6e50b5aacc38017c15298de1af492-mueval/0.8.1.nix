{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mueval";
          version = "0.8.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gwern <gwern0@gmail.com>";
        author = "Gwern";
        homepage = "http://code.haskell.org/mubot/";
        url = "";
        synopsis = "Safely evaluate Haskell expressions";
        description = "Mueval is a Haskell interpreter. It\nuses the GHC API to evaluate arbitrary Haskell expressions.\nImportantly, mueval takes many precautions to defang and avoid \\\"evil\\\"\ncode.  It uses resource limits, whitelisted modules,\nspecial Show instances for IO, threads, processes, changes of directory, and so\non to sandbox the Haskell code.\n\nIt is, in short, intended to be a standalone version of Lambdabot's famous\nevaluation functionality. For examples and explanations, please see the README file.\n\nMueval is POSIX-only.";
        buildType = "Simple";
      };
      components = {
        mueval = {
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
            hsPkgs.utf8-string
            hsPkgs.Cabal
            hsPkgs.extensible-exceptions
          ];
        };
        exes = {
          mueval-core = {
            depends  = [ hsPkgs.base ];
          };
          mueval = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }