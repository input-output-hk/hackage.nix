{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsmodetweaks";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Mark Wotton";
        maintainer = "mwotton@gmail.com";
        author = "mwotton@gmail.com";
        homepage = "https://github.com/mwotton/hsmodetweaks#readme";
        url = "";
        synopsis = "Tool for generating .dir-locals.el for intero";
        description = "Keeps .dir-locals.el up to date so that intero can automatically choose the right targets";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsmodetweaks = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.hpack
              hsPkgs.protolude
              hsPkgs.text
            ];
          };
        };
      };
    }