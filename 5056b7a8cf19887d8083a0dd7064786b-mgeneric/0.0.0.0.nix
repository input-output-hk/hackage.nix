{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mgeneric";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Rafaël Bocquet <rafaelbocquet+github@gmail.com>";
        author = "Rafaël Bocquet";
        homepage = "http://github.com/RafaelBocquet/haskell-mgeneric/";
        url = "";
        synopsis = "Generics with multiple parameters";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        "mgeneric" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }