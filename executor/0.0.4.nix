{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "executor";
          version = "0.0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "gianluca.guarini@gmail.com";
        author = "Gianluca Guarini";
        homepage = "https://github.com/GianlucaGuarini/executor";
        url = "";
        synopsis = "Shell helpers";
        description = "Haskell module to execute single or multiple shell commands";
        buildType = "Simple";
      };
      components = {
        executor = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.async
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.executor
              hsPkgs.base
              hsPkgs.process
              hsPkgs.async
              hsPkgs.hspec
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.executor
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }