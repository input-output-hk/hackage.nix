{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rev-state";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "https://github.com/DanBurton/rev-state#readme";
        url = "";
        synopsis = "Reverse State monad transformer";
        description = "It's like the State monad transformer.\nBut Reversed! The state goes backwards.";
        buildType = "Simple";
      };
      components = {
        rev-state = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
        tests = {
          rev-state-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.rev-state
            ];
          };
        };
      };
    }