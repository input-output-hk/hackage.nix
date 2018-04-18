{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transformers-eff";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Ollie Charles";
        homepage = "https://github.com/ocharles/transformers-eff";
        url = "";
        synopsis = "An approach to managing composable effects, ala mtl/transformers/extensible-effects/Eff";
        description = "";
        buildType = "Simple";
      };
      components = {
        transformers-eff = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.list-transformer
            hsPkgs.free
            hsPkgs.mmorph
          ];
        };
        benchmarks = {
          oleg = {
            depends  = [
              hsPkgs.base
              hsPkgs.effect-interpreters
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.pipes
              hsPkgs.transformers
            ];
          };
        };
      };
    }