{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackage-processing";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "Henning Thielemann";
        homepage = "http://hub.darcs.net/thielema/hackage-processing";
        url = "";
        synopsis = "Process 00-index.tar.gz from Hackage";
        description = "Currently it only contains a program\nfor fetching contributions of an author to Hackage\nand format it as a LaTeX table.\n\n> hackage-find-contribution henning-thielemann.de";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackage-find-contribution = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.hackage-db
              hsPkgs.containers
              hsPkgs.base
            ];
          };
        };
      };
    }