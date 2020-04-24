{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { extra = false; cli = false; yaml = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "etc"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2017, 2018 Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-etc";
      url = "";
      synopsis = "Declarative configuration spec for Haskell projects";
      description = "`etc` gathers configuration values from multiple sources (cli options, OS\nenvironment variables, files) using a declarative spec file that defines where\nthese values are to be found and located in a configuration map.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          ] ++ (pkgs.lib).optionals (flags.extra) [
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
          ]) ++ (pkgs.lib).optional (flags.cli) (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"));
        buildable = true;
        };
      tests = {
        "etc-testsuite" = {
          depends = (([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."etc" or ((hsPkgs.pkgs-errors).buildDepError "etc"))
            ] ++ (pkgs.lib).optional (flags.cli) (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))) ++ (pkgs.lib).optional (flags.extra) (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"));
          buildable = true;
          };
        };
      };
    }