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
        name = "acme-cutegirl";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "http://github.com/Fuuzetsu/acme-cutegirl";
      url = "";
      synopsis = "Maybe gives you a cute girl";
      description = "A package which exists solely to try and give\nthe user a cute girl. Executable and library are both\navailable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      exes = {
        "CuteGirl" = {
          depends = [ (hsPkgs.base) ];
        };
      };
    };
  }