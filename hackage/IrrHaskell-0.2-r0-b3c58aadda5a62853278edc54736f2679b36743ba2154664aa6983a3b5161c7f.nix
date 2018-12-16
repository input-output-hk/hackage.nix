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
      specVersion = "1.6";
      identifier = {
        name = "IrrHaskell";
        version = "0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "e.a.p.cochran@sms.ed.ac.uk";
      author = "Ewen Cochran and Maciej Baranski";
      homepage = "";
      url = "";
      synopsis = "Haskell FRP binding to the Irrlicht game engine.";
      description = "A wrapper for the Irrlicht game engine allowing games to be written with functional reactive programming.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.time)
        ];
      };
    };
  }