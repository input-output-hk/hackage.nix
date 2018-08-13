{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "battleplace-api";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2017-2018 Alexander Bich";
      maintainer = "Alexander Bich <quyse0@gmail.com>";
      author = "Alexander Bich <quyse0@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Public API definitions of BattlePlace.io service";
      description = "Public API definitions of BattlePlace.io service";
      buildType = "Simple";
    };
    components = {
      "battleplace-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.battleplace)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
        ];
      };
    };
  }