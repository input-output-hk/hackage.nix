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
        version = "1.11.1";
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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.language-docker)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.void)
        ];
      };
      exes = {
        "hadolint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gitrev)
            (hsPkgs.hadolint)
            (hsPkgs.language-docker)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.yaml)
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