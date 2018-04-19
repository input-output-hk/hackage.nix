{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Spintax";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 - Michel Boucey";
        maintainer = "michel.boucey@cybervisible.fr";
        author = "Michel Boucey";
        homepage = "https://github.com/MichelBoucey/spintax";
        url = "";
        synopsis = "Random text generation based on spintax";
        description = "Random text generation based on spintax with nested alternatives and empty options.";
        buildType = "Simple";
      };
      components = {
        Spintax = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.mwc-random
            hsPkgs.extra
          ];
        };
      };
    }