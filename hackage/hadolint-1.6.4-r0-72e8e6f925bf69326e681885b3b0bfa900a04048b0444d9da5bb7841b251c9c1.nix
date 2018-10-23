{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hadolint";
        version = "1.6.4";
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
      "hadolint" = {
        depends  = [
          (hsPkgs.ShellCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.language-docker)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hadolint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gitrev)
            (hsPkgs.hadolint)
            (hsPkgs.language-docker)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "hadolint-unit-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.ShellCheck)
            (hsPkgs.aeson)
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