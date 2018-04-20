{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "executor";
          version = "0.0.1";
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
          test-executor = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.async
            ];
          };
        };
      };
    }