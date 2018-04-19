{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shell-monad";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Joey Hess";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Joey Hess";
        homepage = "";
        url = "";
        synopsis = "shell monad";
        description = "This is a shell monad, for generating shell scripts.";
        buildType = "Simple";
      };
      components = {
        shell-monad = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unix
          ];
        };
      };
    }