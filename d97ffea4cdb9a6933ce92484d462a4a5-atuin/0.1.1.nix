{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "atuin";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eb@cs.st-andrews.ac.uk";
        author = "Edwin Brady";
        homepage = "http://www.dcs.st-and.ac.uk/~eb/epic.php";
        url = "";
        synopsis = "Embedded Turtle language compiler in Haskell, with Epic output";
        description = "This language is a demonstration of the Epic compiler API.\nIt is a dynamically typed language with higher order\nfunctions and system interaction (specifically graphics).\nRequires SDL and SDL_gfx libraries, and their C headers.";
        buildType = "Custom";
      };
      components = {
        exes = {
          atuin = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.Cabal
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.epic
            ];
          };
        };
      };
    }