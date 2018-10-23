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
        name = "Hydrogen";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "iqsf@ya.ru";
      author = "Pavel";
      homepage = "https://github.com/iqsf/Hydrogen.git";
      url = "";
      synopsis = "The library for generating a WebGL scene for the web";
      description = "The library for generating a WebGL scene for the web for the Haskell programming language.";
      buildType = "Simple";
    };
    components = {
      "Hydrogen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.aeson)
          (hsPkgs.directory)
          (hsPkgs.MissingH)
          (hsPkgs.shakespeare)
          (hsPkgs.yaml)
          (hsPkgs.HFitUI)
        ];
      };
      exes = {
        "Hydrogen-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Hydrogen)
          ];
        };
      };
      tests = {
        "Hydrogen-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Hydrogen)
          ];
        };
      };
    };
  }