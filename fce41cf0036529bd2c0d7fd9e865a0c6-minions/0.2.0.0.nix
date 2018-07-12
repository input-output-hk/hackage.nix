{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "minions";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jhickner@gmail.com";
        author = "Jason Hickner";
        homepage = "http://github.com/jhickner/minions";
        url = "";
        synopsis = "A fast parallel ssh tool";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "minions" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.process
              hsPkgs.time
              hsPkgs.MissingH
            ];
          };
        };
      };
    }