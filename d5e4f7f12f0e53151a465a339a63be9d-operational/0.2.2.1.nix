{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "operational";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Heinrich Apfelmus 2010-2011";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "http://haskell.org/haskellwiki/Operational";
        url = "";
        synopsis = "Implementation of difficult monads made easy\nwith operational semantics.";
        description = "This library makes it easy to implement monads with tricky control flow.\n\nThis is useful for: writing web applications in a sequential style, programming games with a uniform interface for human and AI players and easy replay capababilities, implementing fast parser monads, designing monadic DSLs, etc.\n\nSee the project homepage <http://haskell.org/haskellwiki/Operational> for a more detailed introduction and features.\n\nRelated packages: MonadPrompt <http://hackage.haskell.org/package/MonadPrompt>.";
        buildType = "Simple";
      };
      components = {
        operational = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
        exes = {
          operational-TicTacToe = {
            depends  = pkgs.lib.optional _flags.buildexamples hsPkgs.random;
          };
        };
      };
    }