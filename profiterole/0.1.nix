{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "profiterole";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2017";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/profiterole#readme";
        url = "";
        synopsis = "Restructure GHC profile reports";
        description = "Given a GHC profile output, this tool generates alternative views on the data,\nwhich are typically more concise and may reveal new insights.";
        buildType = "Simple";
      };
      components = {
        exes = {
          profiterole = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.ghc-prof
              hsPkgs.hashable
              hsPkgs.scientific
              hsPkgs.text
            ];
          };
        };
      };
    }