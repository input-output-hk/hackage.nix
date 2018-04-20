{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "pointfree";
          version = "1.0.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "";
        author = "Thomas Jäger";
        homepage = "http://haskell.org/haskellwiki/Pointfree";
        url = "";
        synopsis = "Pointfree refactoring tool";
        description = "Stand-alone command-line version of the point-less plugin for lambdabot.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pointfree = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
            ];
          };
        };
      };
    }