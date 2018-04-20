{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clean-home";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "https://github.com/ivanperez-keera/clean-home";
        url = "";
        synopsis = "Keep your home dir clean by finding old conf files";
        description = "clean-home searches for config files in your \$HOME\nthat no installed package/program will need.";
        buildType = "Simple";
      };
      components = {
        exes = {
          clean-home = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.HSH
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.IfElse
            ];
          };
        };
      };
    }