{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gore-and-ash-sdl";
          version = "2.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "git@github.com:Teaspot-Studio/gore-and-ash-sdl.git";
        url = "";
        synopsis = "Gore&Ash core module for integration with SDL library";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        gore-and-ash-sdl = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.gore-and-ash
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.sdl2
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
          ];
        };
      };
    }