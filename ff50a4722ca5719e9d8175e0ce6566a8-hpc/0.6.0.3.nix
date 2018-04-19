{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hpc";
          version = "0.6.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ghc-devs@haskell.org";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Code Coverage Library for Haskell";
        description = "This package provides the code coverage library for Haskell.\n\nSee <http://www.haskell.org/haskellwiki/Haskell_program_coverage> for more\ninformation.";
        buildType = "Simple";
      };
      components = {
        hpc = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.time
          ];
        };
      };
    }