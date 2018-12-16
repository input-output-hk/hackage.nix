{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hadolint";
        version = "1.2.5";
      };
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
          (hsPkgs.ShellCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.language-docker)
          (hsPkgs.parsec)
          (hsPkgs.split)
        ];
      };
      exes = {
        "hadolint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gitrev)
            (hsPkgs.hadolint)
            (hsPkgs.language-docker)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
          ];
        };
      };
      tests = {
        "hadolint-unit-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.ShellCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hadolint)
            (hsPkgs.hspec)
            (hsPkgs.language-docker)
            (hsPkgs.parsec)
            (hsPkgs.split)
          ];
        };
      };
    };
  }