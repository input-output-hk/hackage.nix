{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ReplicateEffects";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "martijn@van.steenbergen.nl";
        author = "Martijn van Steenbergen, Sjoerd Visscher";
        homepage = "https://github.com/MedeaMelana/ReplicateEffects";
        url = "";
        synopsis = "Composable replication schemes of applicative functors";
        description = "";
        buildType = "Simple";
      };
      components = {
        ReplicateEffects = {
          depends  = [ hsPkgs.base ];
        };
      };
    }