{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "logging-effect-extra"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "";
      homepage = "https://github.com/jship/logging-effect-extra#readme";
      url = "";
      synopsis = "Batteries-included `logging-effect`.";
      description = "Batteries-included `logging-effect`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
          (hsPkgs."logging-effect-extra-file" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra-file"))
          (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      exes = {
        "log-extra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logging-effect-extra" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect-extra"))
            ];
          buildable = true;
          };
        };
      };
    }