{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "battleplace"; version = "0.1.0.5"; };
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
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.data-default)
          (hsPkgs.hashable)
          (hsPkgs.memory)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      };
    }