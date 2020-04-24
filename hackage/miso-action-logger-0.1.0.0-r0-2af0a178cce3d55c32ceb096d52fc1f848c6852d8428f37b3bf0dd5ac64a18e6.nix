{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "miso-action-logger"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Sviat Chumakov";
      maintainer = "svchumakov@gmail.com";
      author = "Sviat Chumakov";
      homepage = "https://github.com/Lermex/miso-action-logger";
      url = "";
      synopsis = "Miso state transition logger";
      description = "State transition logger for Miso heavily inspired by Redux-Logger.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
          (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
          ];
        buildable = true;
        };
      };
    }