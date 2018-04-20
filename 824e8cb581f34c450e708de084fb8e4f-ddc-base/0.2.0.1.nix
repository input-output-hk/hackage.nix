{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-base";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciple Core language common utilities.";
        description = "This package re-exports the main external dependencies of\nthe Disciplined Disciple Compiler project.";
        buildType = "Simple";
      };
      components = {
        ddc-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.wl-pprint
            hsPkgs.parsec
          ];
        };
      };
    }