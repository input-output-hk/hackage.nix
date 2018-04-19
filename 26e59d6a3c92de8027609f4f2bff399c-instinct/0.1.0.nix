{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "instinct";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Fast artifical neural networks";
        description = "Instinct is a library for fast artifical neural networks.";
        buildType = "Simple";
      };
      components = {
        instinct = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mersenne-random
            hsPkgs.vector
          ];
        };
      };
    }