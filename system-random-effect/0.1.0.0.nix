{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "system-random-effect";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cgaebel@uwaterloo.ca";
        author = "Clark Gaebel";
        homepage = "https://github.com/wowus/system-random-effect";
        url = "";
        synopsis = "Random number generation for extensible effects.";
        description = "";
        buildType = "Simple";
      };
      components = {
        system-random-effect = {
          depends  = [
            hsPkgs.base
            hsPkgs.extensible-effects
            hsPkgs.mersenne-random-pure64
          ];
        };
      };
    }