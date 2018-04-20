{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lindenmayer";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright (C) 2015 Rein Henrichs";
        maintainer = "Rein Henrichs <rein.henrichs@gmail.com>";
        author = "Rein Henrichs";
        homepage = "https://github.com/reinh/hs-lindenmayer";
        url = "";
        synopsis = "L-systems in Haskell";
        description = "L-systems in Haskell";
        buildType = "Simple";
      };
      components = {
        lindenmayer = {
          depends  = [ hsPkgs.base ];
        };
      };
    }