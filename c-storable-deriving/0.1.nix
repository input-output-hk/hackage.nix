{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "c-storable-deriving";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maurer@matthewmaurer.org";
        author = "Matthew Maurer";
        homepage = "https://github.com/maurer/c-storable-deriving";
        url = "";
        synopsis = "Generate C-like storable instances from datatypes";
        description = "Automatically generates struct-rule based Storable\ninstances based on the Generic typeclass.";
        buildType = "Simple";
      };
      components = {
        c-storable-deriving = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }