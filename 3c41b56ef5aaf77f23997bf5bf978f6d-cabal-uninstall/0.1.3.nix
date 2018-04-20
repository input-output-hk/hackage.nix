{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-uninstall";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jan Christiansen <j.christiansen@monoid-it.de>";
        author = "Jan Christiansen";
        homepage = "";
        url = "";
        synopsis = "Uninstall cabal packages";
        description = "Very simple script to delete a cabal package.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabal-uninstall = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }