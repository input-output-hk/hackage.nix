{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gore-and-ash-actor";
          version = "1.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "https://github.com/Teaspot-Studio/gore-and-ash-actor";
        url = "";
        synopsis = "Gore&Ash engine extension that implements actor style of programming";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "gore-and-ash-actor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.gore-and-ash
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
          ];
        };
      };
    }