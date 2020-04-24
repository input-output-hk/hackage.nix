{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "battleplace-api"; version = "0.1.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."battleplace" or ((hsPkgs.pkgs-errors).buildDepError "battleplace"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          ];
        buildable = true;
        };
      };
    }