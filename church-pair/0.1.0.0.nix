{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "church-pair";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mbekkema97@gmail.com";
        author = "Matthew Harm Bekkema";
        homepage = "";
        url = "";
        synopsis = "Church encoded pair";
        description = "This package contains a Church encoded 'Pair' type along with appropriate\ninstances for typeclasses in 'base'.";
        buildType = "Simple";
      };
      components = {
        church-pair = {
          depends  = [ hsPkgs.base ];
        };
      };
    }