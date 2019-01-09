{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hadolint"; version = "1.15.0"; };
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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.language-docker)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.void)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "hadolint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.gitrev)
            (hsPkgs.hadolint)
            (hsPkgs.language-docker)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "hadolint-unit-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.ShellCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hadolint)
            (hsPkgs.hspec)
            (hsPkgs.language-docker)
            (hsPkgs.megaparsec)
            (hsPkgs.split)
            (hsPkgs.text)
            ];
          };
        };
      };
    }