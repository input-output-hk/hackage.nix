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
        name = "PasswordGenerator";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "denisovenator@gmail.com";
      author = "Victor Denisov";
      homepage = "https://github.com/VictorDenisov/PasswordGenerator";
      url = "";
      synopsis = "Simple library for generating passwords";
      description = "Simple library for generating passwords.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }