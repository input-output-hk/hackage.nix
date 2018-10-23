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
        name = "picosat";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "2014 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/haskell-picosat";
      url = "";
      synopsis = "Bindings to the PicoSAT solver";
      description = "`picosat` provides bindings for the fast PicoSAT solver library.";
      buildType = "Simple";
    };
    components = {
      "picosat" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }