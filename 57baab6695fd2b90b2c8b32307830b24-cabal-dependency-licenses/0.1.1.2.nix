{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-dependency-licenses";
          version = "0.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Jasper Van der Jeugt";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "http://github.com/jaspervdj/cabal-dependency-licenses";
        url = "";
        synopsis = "Compose a list of a project's transitive dependencies with their licenses";
        description = "Compose a list of a project's transitive dependencies with their licenses";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal-dependency-licenses" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }