{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "functor-infix";
          version = "0.0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "vi@zalora.com";
        author = "vi";
        homepage = "https://github.com/fmap/functor-infix";
        url = "";
        synopsis = "Infix operators for mapping over compositions of functors. Lots of them.";
        description = "";
        buildType = "Simple";
      };
      components = {
        functor-infix = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }