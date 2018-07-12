{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "brainfuck-monad";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Joey Hess";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Joey Hess";
        homepage = "";
        url = "";
        synopsis = "BrainFuck monad";
        description = "This is a BrainFuck monad, for generating brainfuck programs.";
        buildType = "Simple";
      };
      components = {
        "brainfuck-monad" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }