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
        name = "envstatus";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "gregory.bataille@gmail.com";
      author = "Grégory Bataille";
      homepage = "";
      url = "";
      synopsis = "Display efficiently the state of the local environment";
      description = "Meant to gather in a fast manner all the information you want from your local\nenvironment (like git status, python venv, terraform workspace, ...).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ConfigFile)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "envstatus" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.envstatus)
          ];
        };
      };
      tests = {
        "envstatus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.ConfigFile)
            (hsPkgs.PyF)
            (hsPkgs.envstatus)
          ];
        };
      };
    };
  }