{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "KiCS";
          version = "0.9.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Björn Peemöller";
        author = "Bernd Braßel";
        homepage = "http://www.curry-language.org";
        url = "";
        synopsis = "A compiler from Curry to Haskell";
        description = "This package builds the Curry to Haskell compiler \"kics\".\nThis package also includes many Curry libraries.\nHave a look at the list of modules \"Curry.Module.*\"";
        buildType = "Custom";
      };
      components = {
        KiCS = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.network
            hsPkgs.old-time
            hsPkgs.process
            hsPkgs.random
            hsPkgs.syb
            hsPkgs.unix
            hsPkgs.curry-frontend
          ];
        };
        exes = {
          kics = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-paths
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.curry-base
              hsPkgs.curry-frontend
            ];
          };
          kicsi = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-paths
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.readline
              hsPkgs.curry-base
              hsPkgs.curry-frontend
            ];
          };
        };
      };
    }