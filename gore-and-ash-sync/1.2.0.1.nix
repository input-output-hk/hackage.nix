{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gore-and-ash-sync";
          version = "1.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "https://github.com/Teaspot-Studio/gore-and-ash-sync";
        url = "";
        synopsis = "Gore&Ash module for high level network synchronization";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        gore-and-ash-sync = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.gore-and-ash
            hsPkgs.gore-and-ash-actor
            hsPkgs.gore-and-ash-logging
            hsPkgs.gore-and-ash-network
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }