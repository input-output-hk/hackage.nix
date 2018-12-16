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
        name = "alsa-mixer";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas Tuegel";
      maintainer = "Thomas Tuegel <ttuegel@gmail.com>";
      author = "Thomas Tuegel <ttuegel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Bindings to the ALSA simple mixer API.";
      description = "This package provides bindings to the ALSA simple mixer API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.alsa-core)
        ];
        libs = [ (pkgs."asound") ];
      };
    };
  }