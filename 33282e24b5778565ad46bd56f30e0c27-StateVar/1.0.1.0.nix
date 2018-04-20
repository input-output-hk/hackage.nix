{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "StateVar";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sven Panne <svenpanne@gmail.com>";
        author = "";
        homepage = "https://github.com/haskell-opengl/StateVar";
        url = "";
        synopsis = "State variables";
        description = "This package contains state variables, which are references in the IO monad,\nlike IORefs or parts of the OpenGL state.";
        buildType = "Simple";
      };
      components = {
        StateVar = {
          depends  = [ hsPkgs.base ];
        };
      };
    }