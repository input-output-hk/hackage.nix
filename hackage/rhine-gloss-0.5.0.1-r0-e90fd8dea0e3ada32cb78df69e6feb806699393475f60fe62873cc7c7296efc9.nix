{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "rhine-gloss";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Gloss backend for Rhine";
      description = "This package provides a simple wrapper for the `gloss` library,\nor rather the function `Graphics.Gloss.play`,\nenabling you to write `gloss` applications as signal functions.";
      buildType = "Simple";
    };
    components = {
      "rhine-gloss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rhine)
          (hsPkgs.dunai)
          (hsPkgs.gloss)
        ];
      };
      exes = {
        "rhine-gloss-gears" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rhine-gloss)
          ];
        };
      };
    };
  }