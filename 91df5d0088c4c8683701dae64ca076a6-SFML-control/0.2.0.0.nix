{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SFML-control";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "";
        url = "";
        synopsis = "Higher level library on top of SFML";
        description = "";
        buildType = "Simple";
      };
      components = {
        "SFML-control" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.SFML
            hsPkgs.template-haskell
          ];
        };
      };
    }