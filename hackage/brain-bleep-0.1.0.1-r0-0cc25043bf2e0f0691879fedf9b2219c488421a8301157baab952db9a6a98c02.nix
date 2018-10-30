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
        name = "brain-bleep";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "";
      url = "";
      synopsis = "primitive imperative language";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "brain-bleep" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.parsec)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }