{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "takahashi";
          version = "0.2.2.0";
        };
        license = "MIT";
        copyright = "(C) 2014 Tokiwo Ousaka";
        maintainer = "tokiwoousaka";
        author = "tokiwoousaka";
        homepage = "";
        url = "";
        synopsis = "create slide for presentation.";
        description = "library for create slide for your presentation.";
        buildType = "Simple";
      };
      components = {
        takahashi = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-skeleton
            hsPkgs.lens
            hsPkgs.mtl
          ];
        };
      };
    }