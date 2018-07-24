{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "battleplace";
          version = "0.1.0.6";
        };
        license = "MIT";
        copyright = "(c) 2017-2018 Alexander Bich";
        maintainer = "Alexander Bich <quyse0@gmail.com>";
        author = "Alexander Bich <quyse0@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Core definitions for BattlePlace.io service";
        description = "Core definitions for BattlePlace.io service";
        buildType = "Simple";
      };
      components = {
        "battleplace" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.data-default
            hsPkgs.hashable
            hsPkgs.memory
            hsPkgs.servant
            hsPkgs.text
            hsPkgs.vector
          ];
        };
      };
    }