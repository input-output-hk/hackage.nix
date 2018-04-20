{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-cli";
          version = "0.11";
        };
        license = "MIT";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "https://scravy.de/hydrogen-cli/";
        url = "";
        synopsis = "Hydrogen Data";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          h = {
            depends  = [
              hsPkgs.base
              hsPkgs.hydrogen-cli-args
              hsPkgs.hydrogen-parsing
              hsPkgs.hydrogen-prelude
              hsPkgs.hydrogen-syntax
            ];
          };
        };
      };
    }