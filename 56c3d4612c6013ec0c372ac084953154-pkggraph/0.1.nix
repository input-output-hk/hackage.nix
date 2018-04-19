{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pkggraph";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Robin Green";
        maintainer = "Robin Green <greenrd@greenrd.org>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Package dependency graph for installed packages";
        description = "Presents the package dependencies of all installed packages maintained by a given\nset of maintainers as a \"dot\" graph";
        buildType = "Simple";
      };
      components = {
        exes = {
          pkggraph = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.split
            ];
          };
        };
      };
    }