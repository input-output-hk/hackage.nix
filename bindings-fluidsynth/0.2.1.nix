{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bindings-fluidsynth";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Ben Gamari";
        maintainer = "ben@smart-cactus.org";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/bindings-fluidsynth";
        url = "";
        synopsis = "Haskell FFI bindings for fluidsynth software synthesizer";
        description = "Haskell FFI bindings for fluidsynth software synthesizer";
        buildType = "Simple";
      };
      components = {
        bindings-fluidsynth = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
        };
      };
    }