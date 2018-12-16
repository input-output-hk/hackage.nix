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
        name = "HaskellTutorials";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mrlsd@ya.ru";
      author = "Evgeny Ukganov";
      homepage = "https://github.com/mrLSD/HaskellTutorials";
      url = "";
      synopsis = "Haskell Tutorials by Evgeny Ukhanov";
      description = "Step-by-Step tutorials at learning process";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Haskell.Tutorials" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }