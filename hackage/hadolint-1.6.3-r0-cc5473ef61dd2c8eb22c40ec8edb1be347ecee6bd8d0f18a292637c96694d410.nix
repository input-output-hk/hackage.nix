{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hadolint"; version = "1.6.3"; };
      license = "GPL-3.0-only";
      copyright = "Lukas Martinelli";
      maintainer = "me@lukasmartinelli.ch";
      author = "Lukas Martinelli";
      homepage = "https://github.com/hadolint/hadolint";
      url = "";
      synopsis = "Dockerfile Linter JavaScript API";
      description = "A smarter Dockerfile linter that helps you build best practice Docker images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ShellCheck" or ((hsPkgs.pkgs-errors).buildDepError "ShellCheck"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."language-docker" or ((hsPkgs.pkgs-errors).buildDepError "language-docker"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "hadolint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
            (hsPkgs."hadolint" or ((hsPkgs.pkgs-errors).buildDepError "hadolint"))
            (hsPkgs."language-docker" or ((hsPkgs.pkgs-errors).buildDepError "language-docker"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hadolint-unit-tests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."ShellCheck" or ((hsPkgs.pkgs-errors).buildDepError "ShellCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hadolint" or ((hsPkgs.pkgs-errors).buildDepError "hadolint"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."language-docker" or ((hsPkgs.pkgs-errors).buildDepError "language-docker"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }