{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens-mtl";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/microlens";
        url = "";
        synopsis = "microlens support for Reader/Writer/State from mtl";
        description = "This package contains functions (like 'view' or '+=') which work on\n@Control.Monad.Reader.MonadReader@, @Control.Monad.Writer.MonadWriter@, and\n@Control.Monad.State.MonadState@ from the mtl package.";
        buildType = "Simple";
      };
      components = {
        "microlens-mtl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens
            hsPkgs.mtl
          ];
        };
      };
    }