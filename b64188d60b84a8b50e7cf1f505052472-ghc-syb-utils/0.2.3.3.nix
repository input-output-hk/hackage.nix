{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-syb-utils";
          version = "0.2.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Claus Reinke 2008";
        maintainer = "Thomas Schilling <nominolo@googlemail.com>";
        author = "Claus Reinke";
        homepage = "http://github.com/nominolo/ghc-syb";
        url = "";
        synopsis = "Scrap Your Boilerplate utilities for the GHC API.";
        description = "Scrap Your Boilerplate utilities for the GHC API.";
        buildType = "Simple";
      };
      components = {
        ghc-syb-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
          ] ++ (if compiler.isGhc
            then [ hsPkgs.ghc ]
            else [
              hsPkgs.ghc
              hsPkgs.ghc-syb
            ]);
        };
        tests = {
          regression-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.ghc-syb-utils
            ];
          };
        };
      };
    }