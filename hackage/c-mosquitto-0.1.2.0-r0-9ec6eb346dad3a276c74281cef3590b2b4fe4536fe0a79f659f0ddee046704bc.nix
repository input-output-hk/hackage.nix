{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "c-mosquitto"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/c-mosquitto#readme";
      url = "";
      synopsis = "Simpe mosquito MQTT binding able to work with the Amazons IoT";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."mosquitto" or ((hsPkgs.pkgs-errors).sysDepError "mosquitto"))
          ];
        buildable = true;
        };
      exes = {
        "c-mosquitto" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."c-mosquitto" or ((hsPkgs.pkgs-errors).buildDepError "c-mosquitto"))
            (hsPkgs."options" or ((hsPkgs.pkgs-errors).buildDepError "options"))
            ];
          buildable = true;
          };
        };
      tests = {
        "c-mosquitto-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."c-mosquitto" or ((hsPkgs.pkgs-errors).buildDepError "c-mosquitto"))
            ];
          buildable = true;
          };
        };
      };
    }