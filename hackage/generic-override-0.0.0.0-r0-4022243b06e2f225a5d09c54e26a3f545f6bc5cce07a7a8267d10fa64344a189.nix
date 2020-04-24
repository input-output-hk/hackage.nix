{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "generic-override"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Estatico Studios LLC";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/estatico/generic-override#readme";
      url = "";
      synopsis = "Provides functionality for overriding instances for generic derivation";
      description = "Please see the README on GitHub at <https://github.com/estatico/generic-override#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }