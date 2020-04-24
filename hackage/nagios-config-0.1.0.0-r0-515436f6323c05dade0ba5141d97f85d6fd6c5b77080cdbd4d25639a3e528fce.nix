{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nagios-config"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/hs-nagios-config#readme";
      url = "";
      synopsis = "EDSL to specify Nagios configuration files.";
      description = "EDSL to specify Nagios configuration files. Encode nagios configuration using Haskell types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "nagios-config-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nagios-config" or ((hsPkgs.pkgs-errors).buildDepError "nagios-config"))
            ];
          buildable = true;
          };
        };
      };
    }