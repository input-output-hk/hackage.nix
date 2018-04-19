{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "poker-eval";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "David Himmelstrup <lemmih@gmail.com>";
        author = "David Himmelstrup";
        homepage = "";
        url = "";
        synopsis = "Binding to libpoker-eval";
        description = "Performance oriented functions for judging poker hands\nand related tasks.\n\nHaddock documentation can be found here: <http://mirror.seize.it/poker-eval/documentation/>";
        buildType = "Simple";
      };
      components = {
        poker-eval = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.array
            hsPkgs.vector
          ];
          libs = [ pkgs.poker-eval ];
        };
      };
    }