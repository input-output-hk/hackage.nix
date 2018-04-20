{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cabalQuery";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015, Rogan Creswick";
        maintainer = "creswick@gmail.com";
        author = "Rogan Creswick";
        homepage = "http://github.com/creswick/cabal-query";
        url = "";
        synopsis = "A simple tool to query cabal files.";
        description = "Command line access to the cabal package description\nfiles.\n\ncabalQuery allows you to query one or more .cabal files\nfor fields that may be useful in other contexts, such\nas a build system, where you may need the version number,\nlincense, authors, copyright, etc.. in a programatic way,\nbut without access to the Cabal libraries.";
        buildType = "Simple";
      };
      components = {
        cabalQuery = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.pretty
          ];
        };
        exes = {
          cabalQuery = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabalQuery
              hsPkgs.directory
              hsPkgs.MissingH
              hsPkgs.containers
            ];
          };
        };
      };
    }