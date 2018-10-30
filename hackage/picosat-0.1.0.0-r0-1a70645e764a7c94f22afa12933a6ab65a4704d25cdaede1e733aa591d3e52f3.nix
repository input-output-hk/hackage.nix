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
        name = "picosat";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2012 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "http://www.stephendiehl.com";
      url = "";
      synopsis = "Bindings to the PicoSAT solver";
      description = "`picosat` provides bindings for the fast PicoSAT solver library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }