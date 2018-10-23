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
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Wrapper to run reactive programs written in Rhine\nwith Gloss as backend";
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