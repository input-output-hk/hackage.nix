{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hifi"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Rickard Andersson";
      maintainer = "gonz@severnatazvezda.com";
      author = "Rickard Andersson";
      homepage = "https://gitlab.com/gonz/hifi";
      url = "";
      synopsis = "WiFi connection script generator";
      description = "A CLI tool generating scripts for connecting to WiFi, circumventing big WiFi management tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mustache" or ((hsPkgs.pkgs-errors).buildDepError "mustache"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "hifi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hifi" or ((hsPkgs.pkgs-errors).buildDepError "hifi"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hifi-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hifi" or ((hsPkgs.pkgs-errors).buildDepError "hifi"))
            ];
          buildable = true;
          };
        };
      };
    }