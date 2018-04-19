{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "open-signals";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "2016 Luka Horvat";
        maintainer = "luka.horvat9@gmail.com";
        author = "Luka Horvat";
        homepage = "";
        url = "";
        synopsis = "A mechanism similar to checked exceptions that integrates with MTL and\ntransformer stacks";
        description = "Please see Control.Monad.Signal.Class module.";
        buildType = "Simple";
      };
      components = {
        open-signals = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.either
          ];
        };
        tests = {
          open-signals-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.open-signals
            ];
          };
        };
      };
    }