{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "activehs-base";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divip@aszt.inf.elte.hu";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Basic definitions for activehs";
      description = "This library consists of one module with a few definitions.\nI try to keep it small because this module has to be loaded\nin the interpreter many times during the runtime of the Active.hs\nserver.";
      buildType = "Simple";
    };
    components = {
      "activehs-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }