{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "on-demand-ssh-tunnel"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "(c) 2015 Predrag Radovic";
      maintainer = "predrg@gmail.com";
      author = "Predrag Radovic";
      homepage = "https://github.com/crackleware/on-demand-ssh-tunnel";
      url = "";
      synopsis = "Program that sends traffic through SSH tunnels on-demand";
      description = "Program that sends traffic through SSH tunnels on-demand";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."GenericPretty" or ((hsPkgs.pkgs-errors).buildDepError "GenericPretty"))
          ];
        buildable = true;
        };
      exes = {
        "on-demand-ssh-tunnel" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."GenericPretty" or ((hsPkgs.pkgs-errors).buildDepError "GenericPretty"))
            (hsPkgs."on-demand-ssh-tunnel" or ((hsPkgs.pkgs-errors).buildDepError "on-demand-ssh-tunnel"))
            ];
          buildable = true;
          };
        };
      };
    }